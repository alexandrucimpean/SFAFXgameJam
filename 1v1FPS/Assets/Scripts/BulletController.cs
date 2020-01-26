using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;

[RequireComponent(typeof(Rigidbody))]
public class BulletController : MonoBehaviour
{
    private Rigidbody rb;
    private PhotonView PV;
    private bool isCoroutine;

    // Start is called before the first frame update
    void Start()
    {
        isCoroutine = false;
        PV = GetComponent<PhotonView>();
        rb = GetComponent<Rigidbody>();
        rb.velocity = transform.forward * FindObjectOfType<PlayerMotor>().bulletSpeed;
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Player")
        {
            CheckForTeam(collision);
            collision.gameObject.GetComponent<PlayerMotor>().bulletText.text = "1";
            PhotonNetwork.Destroy(gameObject);
        }
    }

    IEnumerator DestroyObj()
    {
        yield return new WaitForSeconds(5f);
        PhotonNetwork.Destroy(gameObject);
    }

    private void Update()
    {
        if (PV.IsMine)
        {
            if (!isCoroutine)
            {
                isCoroutine = !isCoroutine;
                StartCoroutine("DestroyObj");
            }
        }
    }

    void CheckForTeam(Collision playerToCheck)
    {
        if(playerToCheck.gameObject.layer == 8) // Blue Team
        {
            FindObjectOfType<GameSetupController>().redTeamScore++;
            FindObjectOfType<PlayerMotor>().playerHit = true;
        }
        else if (playerToCheck.gameObject.layer == 9) // Red Team
        {
            FindObjectOfType<GameSetupController>().blueTeamScore++;
            FindObjectOfType<PlayerMotor>().playerHit = true;
        }
    }
}
