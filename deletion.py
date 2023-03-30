import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore

# Initialize Firebase app
cred = credentials.Certificate('C:/Flutter/flutterapps/GDSC/python script/GDSC test data/key.json')
firebase_admin.initialize_app(cred)
db = firestore.client()


towns_ref = db.collection('towns')
towns_docs = towns_ref.get()

# loop through each document and remove the hospital field
for town_doc in towns_docs:
    town_ref = towns_ref.document(town_doc.id)
    town_ref.update({
        'hospital': firestore.DELETE_FIELD
    })
    print(f"Hospital field removed from {town_ref.path}")