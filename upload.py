import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore

cred = credentials.Certificate('C:/Flutter/flutterapps/GDSC/python script/GDSC test data/key.json')
firebase_admin.initialize_app(cred)

db = firestore.client()

towns = [
    {
    "name": "Alburquerque",
    "police_stations": [
        {
            "Contact": "+6338 539-9999, +6338 539-9149"
        },
        {
            "Address": "JX72+7XG, Eastern Poblacion, Alburquerque, Alburquerque, Bohol"
        }
    ]
},
{
    "name": "Alicia",
    "police_stations": [
        {
            "Contact": "+6338 521-2070, +6338 521-2270"
        },
        {
            "Address": "VCXR+F5J, Bohol Circumferential Rd, Alicia, Bohol"
        }
    ]
},
{
    "name": "Anda",
    "police_stations": [
        {
            "Contact": "+6375 557-5010, +63 920-895-0736"
        },
        {
            "Address": "PHVG+6GG, Anda, Bohol"
        }
    ]
},
{
    "name": "Antequera",
    "police_stations": [
        {
            "Contact": ""
        },
        {
            "Address": "Poblacion, Antequera Bohol Antequera, Philippines"
        }
    ]
},
{
    "name": "Baclayon",
    "police_stations": [
        {
            "Contact": "+6338 540-9301"
        },
        {
            "Address": "JWC7+WFM, Baclayon, Bohol"
        }
    ]
},
{
    "name": "Balilihan",
    "police_stations": [
        {
            "Contact": "+0926 989-0606"
        },
        {
            "Address": "QX4C+48F, V. Chatto St, Balilihan, 6342 Bohol"
        }
    ]
},
{
    "name": "Batuan",
    "police_stations": [
        {
            "Contact": "+6338 533-9000, +6338 533-9101"
        },
        {
            "Address": "Q4JW+JVH, Loay Interior Road, Batuan, Bohol"
        }
    ]
},
{
    "name": "Bien Unido",
    "police_stations": [
        {
            "Contact": "+6338 517-2146"
        },
        {
            "Address": "49W9+CGM, National Road, Bien Unido, 6326 Bohol"
        }
    ]
},
{
    "name": "Bilar",
    "police_stations": [
        {
            "Contact": "+6338 535-9076"
        },
        {
            "Address": "P422+QXX, Loay Interior Road, Bilar, Bohol"
        }
    ]
},
{
    "name": "Buenavista",
    "police_stations": [
        {
            "Contact": "+6338 513-9073, +6338 9134-9127"
        },
        {
            "Address": "34J6+PM5, Maximo Leopando St, Buenavista, Bohol"
        }
    ]
},
{
    "name": "Calape",
    "police_stations": [
        {
            "Contact": "+6338 507-9180, +6338 507-5000"
        },
        {
            "Address": "VVVJ+JM4, Calape, Bohol"
        }
    ]
},
{
    "name": "Candijay",
    "police_stations": [
        {
            "Contact": "+6338 526-0016"
        },
        {
            "Address": "Poblacion, Candijay, 6312 Bohol"
        }
    ]
},
{
    "name": "Carmen",
    "police_stations": [
        {
            "Contact": "+6338 525-9223, +6338 525-9222"
        },
        {
            "Address": "R5FX+H5X, Carmen Municipal Hall, Carmen, Carmen, Bohol"
        }
    ]
},
{
    "name": "Catigbian",
    "police_stations": [
        {
            "Contact": "+6338 507-3106"
        },
        {
            "Address": "V242+2QF, Catigbian, Bohol"
        }
    ]
},
{
    "name": "Clarin",
    "police_stations": [
        {
            "Contact": "+6338 509-9176"
        },
        {
            "Address": "Clarin, Bohol"
        }
    ]
},
{
    "name": "Corella",
    "police_stations": [
        {
            "Contact": "+6338 411-2979"
        },
        {
            "Address": "Corella Municipal Building, S Sayon St, Corell"
        }
    ]
},
{
    "name": "Cortes",
    "police_stations": [
        {
            "Contact": "+6338 503-9200"
        },
        {
            "Address": "PVCH+968, Cortes, Bohol"
        }
    ]
},
{
    "name": "Dagohoy",
    "police_stations": [
        {
            "Contact": "+6338 524-0036"
        },
        {
            "Address": "V7RC+RR8, Loay Interior Road, Dagohoy, Bohol"
        }
    ]
},
{
        "name": "Danao",
        "police_stations": [
        {
            "Contact": "+6398 598 6379"
        },
        {
            "Address": "W6XF+9R5, Buenavista - Carmen - Danao - Jetafe Rd, Danao, Bohol"
        }
    ]
},
{
        "name": "Dauis",
        "police_stations": [
        {
            "Contact": "+6338 411-4745"
        },
        {
            "Address": "JVG8+45F, Hontanosas Rd, Poblacion, Dauis, 6339 Bohol"
        }
        ]
},
{
        "name": "Dimiao",
        "police_stations": [
            {
            "Contact": "+6338 536-1060"
        },
        {
            "Address": ""
        }
        ]
},
{
        "name": "Duero",
        "police_stations": [
            {
            "Contact": "+6338 530-1120, +6338 530-1121, +6338 536-1031"
        },
        {
            "Address": "J546+8R5, Dimiao, Bohol"
        }
        ]
},
{
        "name": "Garcia Hernandez",
        "police_stations": [
            {
            "Contact": "+6338 532-5146"
        },
        {
            "Address": "J77W+P34, Garcia-Hernandez Municipal Hall, Garcia-Hernandez, Garcia Hernandez, Bohol"
        }
        ]
},
{
        "name": "Guindulman",
        "police_stations": [
            {
            "Contact": "+6338 532-5146, +6338 529-1182"
        },
        {
            "Address": "QF6Q+F64, Guindulman, Bohol"
        }
        ]
},
{
        "name": "Inabanga",
        "police_stations": [
            {
            "Contact": "+6338 512-9141"
        },
        {
            "Address": "23J8+733, Inabanga Municipal Hall, Inabanga, Inabanga, Bohol"
        }
        ]
},
{
        "name": "Jagna",
        "police_stations": [
            {
            "Contact": "+6338 238-2254"
        },
        {
            "Address": "M92C+97P, Jagna, Bohol"
        }
        ]
},
{
        "name": "Jetafe",
        "police_stations": [
            {
            "Contact": "+6338 514-9052"
        },
        {
            "Address": "5X3+W4X, Jetafe, Bohol"
        }
        ]
},
{
        "name": "Lila",
        "police_stations": [
            {
            "Contact": "+6338 536-5188, +6338 536-5012"
        },
        {
            "Address": "H3QR+XGQ, Bohol Circumferential Rd, Lila, 6304 Bohol"
        }
        ]
},
{
        "name": "Loay",
        "police_stations": [
            {
            "Contact": "+6338 538-9082"
        },
        {
            "Address": "Municipal Hall, Loay, Bohol"
        }
        ]
},
{
        "name": "Loboc",
        "police_stations": [
            {
            "Contact": "+6338 537-9086"
        },
        {
            "Address": "J2QJ+69R, Loboc, Bohol"
        }
        ]
},
{
        "name": "Loon",
        "police_stations": [
            {
            "Contact": "+6338 505-9159"
        },
        {
            "Address": "RQ4X+23G, Tagbilaran North Road, Loon, Bohol"
        }
        ]
},
{
        "name": "Mabini",
        "police_stations": [
            {
            "Contact": "+6338 522-3069"
        },
        {
            "Address": "VG79+RVH, Mabini Municipal Hall, Mabini, Mabini, Bohol"
        }
        ]
},
{
        "name": "Maribojoc",
        "police_stations": [
            {
            "Contact": "+6338 504-9555"
        },
        {
            "Address": "PRRR+9VG, Maribojoc Municipal Hall, Maribojoc, Maribojoc, Bohol"
        }
        ]
},
{
        "name": "Panglao",
        "police_stations": [
            {
            "Contact": "+6338 502-8081, +63038 502-8888"
        },
        {
            "Address": "HQJ2+7Q2, Dauis - Panglao Rd, Poblacion, Panglao, 6340 Bohol"
        }
        ]
},
{
        "name": "Pilar",
        "police_stations": [
            {
            "Contact": "+6338 523-2026"
        },
        {
            "Address": "R8PM+MP3, Sierra Bullones - Malinao Dam - Pilar Rd, Pilar, 6321 Bohol"
        }
        ]
    },
    {
    "name": "Pres. Carlos P. Garcia",
    "police_stations": [
    {
            "Contact": "+0946 965 9854"
        },
        {
            "Address": "4H6H+9WG, National Road, Pres Carlos P Garcia, 6346 Bohol"
        }
    ]
},
    {
    "name": "Sagbayan",
    "police_stations": [
        {
            "Contact": "+6338 511-9110"
        },
        {
            "Address": "W482+M26, Sagbayan Municipal Hall, Sagbayan, Sagbayan"
        }
    ]
},
{
    "name": "San Isidro",
    "police_stations": [
        {
            "Contact": "+6339 424 6463"
        },
        {
            "Address": "JVQ4+M2P, J.S. Torralba St, Tagbilaran City, 6300 Bohol"
        }
    ]
},
{
    "name": "San Miguel",
    "police_stations": [
        {
            "Contact": "+6338 520-3020, +6338 520-3016"
        },
        {
            "Address": "X8X5+MGG, San Miguel, Bohol"
        }
    ]
},
{
    "name": "Sevilla",
    "police_stations": [
        {
            "Contact": "+0926 202 7363"
        },
        {
            "Address": "P23W+98G, Sevilla - Sikatuna Rd, Sevilla, 6347 Bohol"
        }
    ]
},
{
    "name": "Sierra Bullones",
    "police_stations": [
        {
            "Contact": "+6338 527-1001"
        },
        {
            "Address": "R74V+G75, Sierra Bullones, Bohol"
        }
    ]
},
{
    "name": "Sikatuna",
    "police_stations": [
        {
            "Contact": "(038) 416 0758"
        },
        {
            "Address": "MXQG+38V, Tagbilaran City - Corella - Sikatuna - Loboc Rd, Sikatuna"
        }
    ]
},
{
    "name": "Tagbilaran (city)",
    "police_stations": [
        {
            "Contact": "+6338 501-9834, +6338 411-4982, +6338 411-4325"
        },
        {
            "Address": "MV37+GV5, Tagbilaran City, Bohol"
        }
    ]
},
{
    "name": "Talibon",
    "police_stations": [
        {
            "Contact": "+6338 515-0145"
        },
        {
            "Address": "E Flores St, Talibon, Bohol"
        }
    ]
},
{
    "name": "Trinidad",
    "police_stations": [
        {
            "Contact": "+6338 516-1166, +6338 516-1080"
        },
        {
            "Address": "38HV+X37, Trinidad, Bohol"
        }
    ]
},
{
    "name": "Tubigon",
    "police_stations": [
        {
            "Contact": "+6338 508-8000"
        },
        {
            "Address": "XX36+2RV, Tubigon, Bohol"
        }
    ]
},
{
    "name": "Ubay",
    "police_stations": [
        {
            "Contact": "+6338 518-0411, +6338 518-0185"
        },
        {
            "Address": "2FXC+GR6, Ubay Municipal Hall, Ubay, Ubay, Bohol"
        }
    ]
},
{
    "name": "Valencia",
    "police_stations": [
        {
            "Contact": "+6338 532-0025"
        },
        {
            "Address": "J654+5XX, Bohol Circumferential Rd, Valencia, Bohol"
        }
    ]
}
]

for town in towns:
    town_ref = db.collection("towns").document(town['name'])
    town_ref.set(town)