<template>
    <div id="nav">
  <mdb-navbar expand="large" dark color="indigo">
    <mdb-navbar-brand href="#">
      <h1 style="font-family:Roboto;">Admin Dashboard</h1>
    </mdb-navbar-brand>
    <mdb-navbar-toggler>
      <mdb-navbar-nav right>
        <router-link to="/admin"><mdb-nav-item href="#" active>Admin Home</mdb-nav-item></router-link>
        <router-link to="/admin/graphs1"><mdb-nav-item href="#">Analytics</mdb-nav-item></router-link>
        <router-link to="/"><mdb-nav-item href="#">Log Out</mdb-nav-item></router-link>
      </mdb-navbar-nav>
    </mdb-navbar-toggler>
  </mdb-navbar><div class="motto">
      <h1 style="text-align:center;">Your Turn, Citizens </h1>
      <h3 style="text-align:center; padding-top:40px;">Simple thing is, the bodies that create laws, rules and regulations seek feedback from us, the citizens, to finalise them. What are we waiting for? </h3>
      <img style="padding-left:35%;padding-top: 40px;" src="https://www.bargainblessings.com/wp-content/uploads/2010/09/its-your-turn.jpg">
      <column-chart :data="[['policy 1', 20], ['Policy 2', 50], ['policy 3', 60]]" style="padding-top: 40px;"></column-chart>
    </div>
  <router-view/>
  </div>
</template>

<script>
import { mdbNavbar, mdbNavbarBrand, mdbNavbarToggler, mdbNavbarNav, mdbNavItem } from 'mdbvue'
export default {
  name: 'HelloWorld',
  components: {
    mdbNavbar,
    mdbNavbarBrand,
    mdbNavbarToggler,
    mdbNavbarNav,
    mdbNavItem
  }
}
</script>
