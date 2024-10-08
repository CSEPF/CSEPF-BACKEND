"""
This is a wrapper for a JSON http response specific to the massenergize API.
It ensures that the data retrieved is in a json format and adds all possible
errors to the caller of a particular route

"""
import json

from django.http import JsonResponse


class CustomResponse(JsonResponse):
    def __init__(self, data=None, error=None, status=200):
        cursor = {}
        if data != None and isinstance(data, dict):
            if data.get("items") != None:
                cursor = data.get("cursor")
                data = data.get("items")

        response = {"data": data, "error": error, "success": not error}

        super().__init__(
            response, safe=True, json_dumps_params={"indent": 2}, status=status
        )

    def toDict(self):
        return json.loads(str(self.content, encoding="utf8"))
