[
  {
    "memory": 256,
    "name": "myapp",
    "cpu": 256,
    "image": "${REPOSITORY_URL}:latest",
    "environment": [
    	{"name": "SLACK_WEBHOOK", "value":"https://www.mywebhook.com"},
    	{"name": "SNOWFLAKE_PASSWORD", "value":"mypassword"},
    	{"name": "ANOTHER_VARIABLE", "value":"anothervalue"},
    	{"name": "YET_ANOTHER_VARIABLE", "value":"anothervalue"}
    ]
  }
]

