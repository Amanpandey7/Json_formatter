import json

def lambda_handler(event, context):
    try:
        body = json.loads(event["body"])
        action = body.get("action")
        input_json = body.get("json")

        parsed = json.loads(input_json)

        if action == "minify":
            output = json.dumps(parsed, separators=(",", ":"))
        else:
            output = json.dumps(parsed, indent=2)

        return {
            "statusCode": 200,
            "headers": {
                "Access-Control-Allow-Origin": "*"
            },
            "body": json.dumps({"result": output})
        }

    except json.JSONDecodeError as e:
        return {
            "statusCode": 400,
            "headers": {
                "Access-Control-Allow-Origin": "*"
            },
            "body": json.dumps({"error": f"Invalid JSON: {str(e)}"})
        }
