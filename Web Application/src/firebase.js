import firebase from 'firebase'
import 'firebase/firestore'
import 'firebase/firebase-storage'
import 'firebase/auth'
import 'firebase/analytics'

var firebaseConfig = {
  apiKey: '',
  authDomain: 'cfg-team-1.firebaseapp.com',
  databaseURL: 'https://cfg-team-1.firebaseio.com',
  projectId: 'cfg-team-1',
  storageBucket: 'cfg-team-1.appspot.com',
  messagingSenderId: '957238179351',
  appId: '1:957238179351:web:bd7525b241b6043f29ce52',
  measurementId: 'G-GD3W3SK53M'
}

const fb = firebase.initializeApp(firebaseConfig)
const db = firebase.firestore()

export { fb, db }
