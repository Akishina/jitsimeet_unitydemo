using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Runtime.InteropServices;

public class SDKSampleScript : MonoBehaviour
{
    [DllImport("__Internal")]
    private static extern void ConsoleLog(string serverURL, string room);

    public static void ConsoleLogFunction(string serverURL, string room)
    {
        if(Application.platform != RuntimePlatform.OSXEditor)
        {
            ConsoleLog(serverURL, room);
        }
    }
}
