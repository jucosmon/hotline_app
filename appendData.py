import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore

# Initialize Firebase app
cred = credentials.Certificate('C:/Flutter/flutterapps/GDSC/python script/GDSC test data/key.json')
firebase_admin.initialize_app(cred)
db = firestore.client()

# Reference to towns collection
towns_ref = db.collection("towns")

for town_doc in towns_ref.stream():
    town_ref = towns_ref.document(town_doc.id)
    town_ref.update({
        "fire_station": {
        }
    })
    print(f"Added fire station field to document {town_doc.id}")
