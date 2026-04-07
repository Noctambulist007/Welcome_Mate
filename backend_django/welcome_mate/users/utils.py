from rest_framework.response import Response
from datetime import datetime

def standard_response(success, message, data=None, status_code=200):
    response_data = {
        "success": success,
        "message": message,
        "data": data,
        "timestamp": datetime.now().isoformat()
    }
    return Response(response_data, status=status_code)
