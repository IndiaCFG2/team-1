<template>
<div><h1>google</h1></div>
</template>

<script>
import { db } from '../firebase'
export default {
  data () {
    return {
      policies: {}
    }
  },
  created () {
    db.collection('policies').doc('2hIVOtPTUID7X3Owzlh4').collection('subjective_responses').get().then(function (querySnapshot) {
      querySnapshot.forEach(function (doc) {
        // doc.data() is never undefined for query doc snapshots
        console.log(doc.id, ' => ', doc.data())
      })
    })
  }
}
</script>
