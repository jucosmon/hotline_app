import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
import re

# initialize Firebase Admin SDK with service account credentials
cred = credentials.Certificate('C:/Flutter/flutterapps/GDSC/python script/security.json')
firebase_admin.initialize_app(cred)

# create Firestore client
db = firestore.client()

# read hospital data from file
with open('C:/Flutter/flutterapps/GDSC/python script/HOSPITALS.txt', 'r', encoding='utf-8') as file:
    data = file.readlines()

# initialize variables
town = None
hospitals = []

# loop through each line of data
for line in data:
    # check if line contains a town name
    if line[0].isupper():
        # add previous hospitals to Firestore
        if town:
            town_ref = db.collection('towns').document(town)
            for hospital in hospitals:
                town_ref.set({
                    'hospitals': firestore.ArrayUnion([{
                        'name': hospital['name'],
                        'contact': hospital['contact'],
                        'address': hospital['address']
                    }])
                }, merge=True)
        hospitals = []

        town = line.strip()
        print("Town: " + town)

    # check if line contains hospital data
    elif line.startswith('\t-'):
        # extract contact and address
        if 'CONTACT' in line:
            contact = line.split(':')[1].strip()
            print("Contact: " + contact)
        elif 'ADDRESS' in line:
            address = line.split(':')[1].strip()
            hospitals.append({
                'name': hospital_name,
                'contact': contact,
                'address': address
            })

        # extract hospital name and add to hospitals list
    elif line.startswith('1'):
        hospital_name = line.split('. ')[1].strip()
        print("Hos_name: " + hospital_name)

# add last set of hospitals to Firestore
if town:
    town_ref = db.collection('towns').document(town)
    for hospital in hospitals:
        town_ref.set({
            'hospitals': firestore.ArrayUnion([{
                'name': hospital['name'],
                'contact': hospital['contact'],
                'address': hospital['address']
            }])
        }, merge=True)
