using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Clock : MonoBehaviour {

	public Transform hoursHand;
	public Transform minutesHand;
	public Transform secondsHand;

	private const float degreesPerHour = 30;
	private const float degreesPerMinute = 6;
	private const float degreesPerSecond = 6;

	void Update(){
		hoursHand.rotation = Quaternion.Euler(0, DateTime.Now.Hour * degreesPerHour, 0);
		minutesHand.rotation = Quaternion.Euler(0, DateTime.Now.Minute * degreesPerMinute, 0);	
		secondsHand.rotation = Quaternion.Euler(0, DateTime.Now.Second * degreesPerSecond, 0);
	}
}
