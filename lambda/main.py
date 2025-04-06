import json

def lambda_handler(event, context):
    try:
        # Parse the body
        body = json.loads(event.get("body", "{}"))
        input_json = body.get("json")

        if input_json is None:
            return {
                "statusCode": 400,
                "body": json.dumps({"error": "No 'json' field in request"})
            }

        # Try formatting the JSON
        parsed = json.loads(input_json)
        formatted_json = json.dumps(parsed, indent=4)

        return {
            "statusCode": 200,
            "headers": {
                "Content-Type": "application/json",
                "Access-Control-Allow-Origin": "*"
            },
            "body": json.dumps({"formatted": formatted_json})
        }

    except json.JSONDecodeError:
        return {
            "statusCode": 400,
            "body": json.dumps({"error": "Invalid JSON input"})
        }
