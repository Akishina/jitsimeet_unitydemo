using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestSDK : MonoBehaviour
{
    public void OnClickToShowJitsi () {
        SDKSampleScript.ConsoleLogFunction("https://meet.jit.si", "topica123");
    }
}
