<template>
<div class="grap"><h3>Sentimental FeedBack</h3>
<column-chart :data="[['Positive', 32], ['Neutral', 46], ['Negative', 28]]" style="padding-top:40px;"></column-chart>
<scatter-chart :data="[[1, 190], [2,200], [3,150]]" xtitle="Policy" ytitle="Population" style="padding-top:40px;"></scatter-chart>
</div>
</template>

<script>
/* import { db } from '../firebase'
export default {
  name: 'graphs2',
  data () {
    return {
      messsage: null,
      negative: null,
      neutral: null,
      positive: null
    }
  },
  beforeRouteEnter (to, from, next) {
    db.collection('policies').where('policies_id',
      '==', to.params.policies_id).get()
      .then(querySnapshot => {
        querySnapshot.forEach(doc => {
          next(vm => {
            vm.policies_id = doc.data().policies_id
            vm.id = doc.data().message
            vm.negative = doc.data().negative
            vm.neutral = doc.data().neutral
            vm.positive = doc.data().positive
          })
        })
      })
  },
  watch: {
    $route: 'fetchData'
  },
  methods: {
    fetchData () {
      db.collection('policies').where('policies_id', '==', this.$route.params.policies_id).get().then(querySnapshot => {
        querySnapshot.forEach(doc => {
          this.messsage = doc.data().messsage
          this.negative = doc.data().negative
          this.neutral = doc.data().neutral
          this.positive = doc.data().positive
        })
      })
    }
  }
} */
</script>
