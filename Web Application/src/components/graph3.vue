<template>
    <div id="graphs2">
        <h3>Feedback Form analysis</h3>
    <pie-chart :data="[['Yes', 44], ['No', 23]]"></pie-chart>
    <h4> The pie chart gives an average information about how many people chose yes or no for overall questions present in the feedback form. </h4>
    <column-chart :data="[['Female', 32], ['Male', 46]]" style="padding-top:40px;"></column-chart>
    <h4> The bar graph gives the number of males and females who have given their feedback as yes. </h4>
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
