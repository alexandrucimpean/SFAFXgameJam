using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using System.IO;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

[RequireComponent(typeof(ConfigurableJoint))]
[RequireComponent(typeof(PlayerMotor))]
public class PlayerController : MonoBehaviour {

    private PhotonView PV;

    [SerializeField]
    private float speed = 5f;

    [SerializeField]
    private float lookSensitivity = 3f;

    [SerializeField]
    private float thrusterForce = 1000f;

    [SerializeField]
    private float thrusterFuelBurnSpeed = 1f;
    private float thrusterFuelRegenSpeed = 1f;
    private float thrusterFuelAmount = 1f;

    private GameObject _firePoint;

    private float _bulletSpeed;
    private Camera cam;

    [Header("Spring settings:")]
    [SerializeField]
    private JointDriveMode jointMode = JointDriveMode.Position;
    [SerializeField]
    private float jointSpring = 20f;
    [SerializeField]
    private float jointMaxForce = 40f;

    private PlayerMotor motor;
    private ConfigurableJoint joint;

    void Start()
    {
        PV = GetComponent<PhotonView>();

        motor = GetComponent<PlayerMotor>();
        joint = GetComponent<ConfigurableJoint>();

        cam = GetComponentInChildren<Camera>();

        _firePoint = motor.firePoint;
        _bulletSpeed = motor.bulletSpeed;

        SetJointSettings(jointSpring);
    }

    void Update()
    {
        if (PV.IsMine)
        {
            //Calculate movement velocity as a 3D vector
            float _xMov = Input.GetAxisRaw("Horizontal");
            float _zMov = Input.GetAxisRaw("Vertical");

            Vector3 _movHorizontal = transform.right * _xMov;
            Vector3 _movVertical = transform.forward * _zMov;

            // Final movement vector
            Vector3 _velocity = (_movHorizontal + _movVertical).normalized * speed;

            //Apply movement
            motor.Move(_velocity);

            //Calculate rotation as a 3D vector (turning around)
            float _yRot = Input.GetAxisRaw("Mouse X");

            Vector3 _rotation = new Vector3(0f, _yRot, 0f) * lookSensitivity;

            //Apply rotation
            motor.Rotate(_rotation);

            //Calculate camera rotation as a 3D vector (turning around)
            float _xRot = Input.GetAxisRaw("Mouse Y");

            float _cameraRotationX = _xRot * lookSensitivity;

            //Apply camera rotation
            motor.RotateCamera(_cameraRotationX);

            // Calculate the thrusterforce based on player input
            Vector3 _thrusterForce = Vector3.zero;
            if (Input.GetButton("Jump") && thrusterFuelAmount > 0f)
            {
                thrusterFuelAmount -= thrusterFuelBurnSpeed * Time.deltaTime;

                _thrusterForce = Vector3.up * thrusterForce;
                SetJointSettings(0f);
            }
            else
            {
                thrusterFuelAmount += thrusterFuelRegenSpeed * Time.deltaTime;

                SetJointSettings(jointSpring);
            }

            thrusterFuelAmount = Mathf.Clamp(thrusterFuelAmount, 0f, 1f);

            // Apply the thruster force
            motor.ApplyThruster(_thrusterForce);

            _firePoint.transform.rotation = cam.transform.rotation;

            if(Input.GetButtonDown("Fire1") && motor.bulletText.text == "1")
            {
                if(gameObject.layer == 8) // Blue layer
                {
                    GameObject bulletGO = PhotonNetwork.Instantiate(Path.Combine("Player", "BlueTeamBullet"), _firePoint.transform.position, _firePoint.transform.rotation);
                    motor.bulletText.text = "0";
                    StartCoroutine(BulletText(motor.bulletText));
                }
                else if (gameObject.layer == 9) // Red layer
                {
                    GameObject bulletGO = PhotonNetwork.Instantiate(Path.Combine("Player", "RedTeamBullet"), _firePoint.transform.position, _firePoint.transform.rotation);
                    motor.bulletText.text = "0";
                    StartCoroutine(BulletText(motor.bulletText));
                }
            }

            motor.SetFuelAmount(thrusterFuelAmount);

            if (motor.playerHit)
            {
                Debug.Log("playerHit");
                if (gameObject.layer == 8) // Blue layer
                {
                    gameObject.transform.position = FindObjectOfType<GameSetupController>().spawnPoints[0].gameObject.transform.position;
                    gameObject.transform.rotation = FindObjectOfType<GameSetupController>().spawnPoints[0].gameObject.transform.rotation;
                    motor.playerHit = false;
                    Debug.Log("playerHit blue layer");
                }
                if (gameObject.layer == 9) // Red layer
                {
                    gameObject.transform.position = FindObjectOfType<GameSetupController>().spawnPoints[1].gameObject.transform.position;
                    gameObject.transform.rotation = FindObjectOfType<GameSetupController>().spawnPoints[1].gameObject.transform.rotation;
                    motor.playerHit = false;
                    Debug.Log("playerHit red layer");
                }
            }
        }

        motor.scoreText.text = FindObjectOfType<GameSetupController>().blueTeamScore + " - " + FindObjectOfType<GameSetupController>().redTeamScore;
    }

    IEnumerator BulletText(Text _bulletText)
    {
        yield return new WaitForSeconds(5f);
        _bulletText.text = "1";
    }

    private void SetJointSettings(float _jointSpring)
    {
        joint.yDrive = new JointDrive
        {
            mode = jointMode,
            positionSpring = _jointSpring,
            maximumForce = jointMaxForce
        };
    }

}
