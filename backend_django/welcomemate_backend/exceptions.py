from rest_framework.views import exception_handler
from datetime import datetime

def custom_exception_handler(exc, context):
    response = exception_handler(exc, context)

    if response is not None:
        custom_data = {
            "success": False,
            "message": "Error occurred",
            "data": None,
            "timestamp": datetime.now().isoformat()
        }

        if isinstance(response.data, dict):
            if 'detail' in response.data:
                custom_data['message'] = response.data['detail']
            else:
                custom_data['message'] = "Validation failed"
                custom_data['data'] = response.data 
        elif isinstance(response.data, list):
             custom_data['message'] = str(response.data[0])
        
        response.data = custom_data

    return response
