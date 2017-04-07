# dOob-LfgPog:APA91bEw5HLFPUNZm26awVGTmisdP7ELW6_VMhyTC3430pw2TyCLNXml78CwlIegskoU-4lNeBWOKBTc7KEqGBf7_-0ubrLX9BrlvEgoPfe6WqJdKMq6hPkINgSFkrzJXQhD3zOiIWk_

curl -X POST -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIwYWUyOTdiOC1jNjlhLTQ3ZmUtYjk1ZS1hMzZlZDRkOGEwYWUifQ.QTveVW06xLanUEa51vgoWSzLAiR10ELsJ2m2ZO3B94I" -H "Content-Type: application/json" -d '{
    "tokens": ["dOob-LfgPog:APA91bEw5HLFPUNZm26awVGTmisdP7ELW6_VMhyTC3430pw2TyCLNXml78CwlIegskoU-4lNeBWOKBTc7KEqGBf7_-0ubrLX9BrlvEgoPfe6WqJdKMq6hPkINgSFkrzJXQhD3zOiIWk_"],
    "profile": "teste",
    "notification": {
        "message": "This is my demo push!"
    }
}' "https://api.ionic.io/push/notifications"


curl -X POST --header "Authorization: key=AAAAXRMF8Cg:APA91bH2_DLOoHNIV_hIvsLKIeTi0vJb5UDS7nez8jju4ySVPIZhe7oY-98EDE_rVc3Yrap11SaZsTnEQQDpb5nJiwpc0amiVlkYD6v9BvEzYTbRZzxpXHlR4xfEBl-ZBlVyo1XdVKDd" \
    --Header "Content-Type: application/json" \
    https://fcm.googleapis.com/fcm/send \
    -d "{\"to\":\"dOob-LfgPog:APA91bEw5HLFPUNZm26awVGTmisdP7ELW6_VMhyTC3430pw2TyCLNXml78CwlIegskoU-4lNeBWOKBTc7KEqGBf7_-0ubrLX9BrlvEgoPfe6WqJdKMq6hPkINgSFkrzJXQhD3zOiIWk_\",\"notification\":\"Yellow\",\"priority\":10}"
