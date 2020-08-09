<template>
    <div id="graphs2">
        <h3>Feedback Form analysis</h3>
    <pie-chart :data="[['Yes', 44], ['No', 23]]"></pie-chart>
    <column-chart :data="[['Female', 32], ['Male', 46]]" style="padding-top:40px;"></column-chart>
    </div>
</template>

<script>
export default {
  name: 'graphs2',
  data () {
    return {
    }
  }
}
</script>
