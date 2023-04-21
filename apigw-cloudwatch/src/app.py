import json
import random
import names


def lambda_handler(event, context):
    results = random.randint(1, 78)
    pc1 = random.randint(1, 9)
    pc2 = random.randint(10, 99)
    street_name = names.get_last_name()
    return {
        "statusCode": 200,
        "body": json.dumps({
            "Address":
                {
                    "House Number": f"{results}",
                    "Street": f"{street_name} Street",
                    "Post-Code": f"CV{pc1} {pc2}BT"
                },
        }),
    }
