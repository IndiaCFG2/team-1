<template>
<div class="log">
  <section class="form-simple">
    <mdb-row>
      <mdb-col md="5">
        <mdb-card>
          <div class="header pt-3 grey lighten-2">
            <mdb-row class="d-flex justify-content-start">
              <h3 class="deep-grey-text mt-3 mb-4 pb-1 mx-5">Log in</h3>
            </mdb-row>
          </div>
          <mdb-card-body class="mx-4 mt-4">
            <mdb-input label="Your email" type="text"/>
            <mdb-input label="Your password" type="password" containerClass="mb-0"/>
            <div class="text-center mb-4 mt-5">
              <mdb-btn color="cyan" type="button" class="btn-block z-depth-2" @click="$router.push('/admin')">Log in</mdb-btn>
            </div>
            <p class="font-small grey-text d-flex justify-content-center"><a @click="$router.push('/')" class="dark-grey-text font-weight-bold ml-1"> <h3>Home</h3> </a></p>
          </mdb-card-body>
        </mdb-card>
      </mdb-col>
    </mdb-row>
  </section>
</div>
</template>
<script>
import { mdbRow, mdbCol, mdbCard, mdbCardBody, mdbInput, mdbBtn } from 'mdbvue'
export default {
  name: 'FormsPage',
  components: {
    mdbRow,
    mdbCol,
    mdbCard,
    mdbCardBody,
    mdbInput,
    mdbBtn
  }
}
</script>
<style>
.log {
    padding-left: 40%;
    padding-top: 100px;
}
  .form-simple .font-small {
    font-size: 0.8rem;
    }

  .form-simple .header {
    border-top-left-radius: .3rem;
    border-top-right-radius: .3rem; }

  .form-simple input[type=text]:focus:not([readonly]) {
    border-bottom: 1px solid #ff3547;
    -webkit-box-shadow: 0 1px 0 0 #ff3547;
    box-shadow: 0 1px 0 0 #ff3547; }

  .form-simple input[type=text]:focus:not([readonly]) + label {
    color: #4f4f4f; }

  .form-simple input[type=password]:focus:not([readonly]) {
    border-bottom: 1px solid #ff3547;
    -webkit-box-shadow: 0 1px 0 0 #ff3547;
    box-shadow: 0 1px 0 0 #ff3547; }

  .form-simple input[type=password]:focus:not([readonly]) + label {
    color: #4f4f4f; }
</style>
