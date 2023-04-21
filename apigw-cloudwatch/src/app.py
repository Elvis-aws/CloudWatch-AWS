import json
import random


def lambda_handler(event, context):
    results = random.randint(1, 78)
    pc1 = random.randint(1, 9)
    pc2 = random.randint(10, 99)
    return {
        "statusCode": 200,
        "body": json.dumps({
            "Address":
                {
                    "House Number": f"{results}",
                    "Street": "Manley Street",
                    "Post-Code": f"CV{pc1} {pc2}BT"
                },
        }),
    }
