from rest_framework.renderers import JSONRenderer
from datetime import datetime

class StandardJSONRenderer(JSONRenderer):
    def render(self, data, accepted_media_type=None, renderer_context=None):
        status_code = renderer_context['response'].status_code if renderer_context else 200
        
        if isinstance(data, dict) and 'success' in data and 'data' in data:
            return super().render(data, accepted_media_type, renderer_context)

        response_data = {
            "success": True if status_code < 400 else False,
            "message": "Success" if status_code < 400 else "Error", 
            "data": data,
            "timestamp": datetime.now().isoformat()
        }
        
        return super().render(response_data, accepted_media_type, renderer_context)
