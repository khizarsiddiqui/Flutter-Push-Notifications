import { https } from 'firebase-functions';
import { initializeApp, messaging } from 'firebase-admin';

initializeApp();

export const sendPushNotification = https.onRequest(async (req, res) => {
  const token = req.body.token;
  const title = req.body.title;
  const body = req.body.body;
  const ttl = req.body.ttl;

  const message = {
    token: token,
    data: {
      'title': title,
      'body': body
    },
    android: {
      priority: "high",
      ttl: ttl * 1000
    }
  };

  try {
    const response = await messaging().send(message);
    res.status(200).send(`Notification sent successfully: ${response}`);
  } catch (error) {
    console.error("Error sending notification:", error);
    res.status(500).send(`Error sending notification: ${error}`);
  }
});
