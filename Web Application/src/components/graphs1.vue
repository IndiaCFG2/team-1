<template>
    <div id="policies">
        <ul class="collection with-header">
            <li class="collection-header"><h1>Policies</h1></li>
            <li v-for="policies in policies" v-bind:key="policies.id" class="collection-item">
                <h3>{{ policies.title }}</h3>
                <router-link to="/admin/graphs2"><mdb-btn color="primary" rounded>Subject_response</mdb-btn></router-link>
                <router-link v-bind:to="{ name: 'graphs3', params: { policies_id: policies.policies_id }}"><mdb-btn color="primary" rounded>Objective_response</mdb-btn></router-link>
                </li>
</ul>
<router-link to="/admin"><mdb-btn outline="primary" darkWaves rounded>Home</mdb-btn></router-link>
</div>
</template>

<script>
import { db } from '../firebase'
import { mdbBtn } from 'mdbvue'
export default {
  name: 'policies',
  components: {
    mdbBtn
  },
  data () {
    return {
      policies: []
    }
  },
  created () {
    db.collection('policies').orderBy('id').get().then(querySnapshot => {
      querySnapshot.forEach(doc => {
        const data = {
          id: doc.id,
          title: doc.data().title
        }
        this.policies.push(data)
      })
    })
  }
}
</script>
