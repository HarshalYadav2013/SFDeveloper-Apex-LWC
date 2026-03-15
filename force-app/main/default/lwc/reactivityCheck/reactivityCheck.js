import { LightningElement } from 'lwc';

export default class ReactivityCheck extends LightningElement {
    userAddress = 'G1 55, first floor South City-2';

    myPersonalDetails = [
  {
    "_id": "693a6a57adde9695b93da6bf",
    "index": 0,
    "guid": "b45ebabb-755a-44f6-82c6-0ac9bd8ef9d7",
    "isActive": true,
    "balance": "$3,122.10",
    "picture": "http://placehold.it/32x32",
    "age": 24,
    "eyeColor": "green",
    "name": "Jimenez Small",
    "gender": "male",
    "company": "NAMEBOX",
    "email": "jimenezsmall@namebox.com",
    "phone": "+1 (892) 447-2686",
    "address": "416 Jackson Place, Martell, Ohio, 837",
    "registered": "2014-08-24T09:28:33 -06:-30",
    "latitude": -46.099284,
    "longitude": -61.275628,
    "tags": [
      "consectetur",
      "ea",
      "tempor",
      "ullamco",
      "nulla",
      "id",
      "ad"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Green Stein"
      },
      {
        "id": 1,
        "name": "Susie Brock"
      },
      {
        "id": 2,
        "name": "Johanna Moss"
      }
    ],
    "greeting": "Hello, Jimenez Small! You have 1 unread messages.",
    "favoriteFruit": "apple"
  }
]
    updateAddress(){
        this.userAddress = 'Village- Kalyanpura, Ward - 9';
        this.myPersonalDetails[0].guid = "755a-44f6-82c6-0ac9bd8ef9d7";
        this.myPersonalDetails[0].friends[0].name = "Deepak Yadav";
    }
}