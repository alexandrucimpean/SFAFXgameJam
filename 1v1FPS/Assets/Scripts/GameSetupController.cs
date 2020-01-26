using Photon.Pun;
using System.IO;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class GameSetupController : MonoBehaviour
{
    public static GameSetupController GS;

    public Transform[] spawnPoints;

    private void OnEnable()
    {
        if(GS == null)
        {
            GS = this;
        }
    }

    private PhotonView PV;
    public GameObject myPlayer;
    public int blueTeamScore;
    public int redTeamScore;

    // Start is called before the first frame update
    void Start()
    {
        PV = GetComponent<PhotonView>();
        int numberOfPlayers = PhotonNetwork.CountOfPlayers;
        Debug.Log(numberOfPlayers);
        if(numberOfPlayers == 1) // Blue Team
        {
            myPlayer = PhotonNetwork.Instantiate(Path.Combine("Player", "BluePlayer"),
                GS.spawnPoints[0].position, GS.spawnPoints[0].rotation, 0);
            
        }
        else if (numberOfPlayers == 2) // Red Team
        {
            myPlayer = PhotonNetwork.Instantiate(Path.Combine("Player", "RedPlayer"),
                GS.spawnPoints[1].position, GS.spawnPoints[1].rotation, 0);
            
        }


        myPlayer.transform.Find("Camera").gameObject.SetActive(true);
        ((MonoBehaviour)myPlayer.GetComponent("PlayerMotor")).enabled = true;

        blueTeamScore = 0;
        redTeamScore = 0;
    }

    private void Update()
    {
        CheckForScore();
    }

    void CheckForScore()
    {
        if(blueTeamScore > 2)
        {
            Debug.Log("Blue team won!");
            DisconnectPlayer();
        }
        if(redTeamScore > 2)
        {
            Debug.Log("Red team won!");
            DisconnectPlayer();
        }
    }

    public void DisconnectPlayer()
    {
        StartCoroutine(DisconnectAndLoad());
    }

    IEnumerator DisconnectAndLoad()
    {
        PhotonNetwork.Disconnect();
        while (PhotonNetwork.IsConnected)
            yield return null;
        SceneManager.LoadScene("DelayStartMenu");
    }
}
