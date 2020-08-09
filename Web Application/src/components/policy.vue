<template>
  <div>
    <div id="nav">
  <mdb-navbar expand="large" dark color="indigo">
    <mdb-navbar-brand href="#">
      <h1 style="font-family:Roboto;">Admin Dashboard</h1>
    </mdb-navbar-brand>
    <mdb-navbar-toggler>
      <mdb-navbar-nav right>
        <router-link to="/admin"><mdb-nav-item href="#" active>Admin Home</mdb-nav-item></router-link>
        <router-link to="/admin/graphs"><mdb-nav-item href="#">Visualisation</mdb-nav-item></router-link>
        <router-link to="/"><mdb-nav-item href="#">Log Out</mdb-nav-item></router-link>
      </mdb-navbar-nav>
    </mdb-navbar-toggler>
  </mdb-navbar>
  <router-view/>
  </div>
  <div style="padding-top: 80px;">
<mdb-container>
<mdb-row>
<mdb-card-group deck>
<mdb-card>
<mdb-view hover>
<a href="#!">
<mdb-card-image src="https://iasexamportal.com/sites/default/files/Government-Plan-Programme-Policies.jpeg"></mdb-card-image>
</a>
</mdb-view>
<mdb-card-body>
<mdb-card-title>Policy 1</mdb-card-title>
<mdb-card-text>Information about the policy.</mdb-card-text>
<router-link to="/admin/graphs"><mdb-btn color="primary">View in detail</mdb-btn></router-link>
</mdb-card-body>
</mdb-card>
<mdb-card>
<mdb-view hover>
<a href="#!">
<mdb-card-image src="https://iasexamportal.com/sites/default/files/Government-Plan-Programme-Policies.jpeg" alt="Card image cap"></mdb-card-image>
</a>
</mdb-view>
<mdb-card-body>
<mdb-card-title>Policy 2</mdb-card-title>
<mdb-card-text>Information about the policy.</mdb-card-text>
<mdb-btn color="primary">View in detail</mdb-btn>
</mdb-card-body>
</mdb-card>
<mdb-card>
<mdb-view hover>
<a href="#!">
<mdb-card-image src="https://iasexamportal.com/sites/default/files/Government-Plan-Programme-Policies.jpeg" alt="Card image cap"></mdb-card-image>
</a>
</mdb-view>
<mdb-card-body>
<mdb-card-title>Policy 3</mdb-card-title>
<mdb-card-text>Information about the policy.</mdb-card-text>
<mdb-btn color="primary">View in detail</mdb-btn>
</mdb-card-body>
</mdb-card>
</mdb-card-group>
</mdb-row>
</mdb-container>
  </div>
  <div style="padding-top: 80px;">
<mdb-container>
<mdb-row>
<mdb-card-group deck>
<mdb-card>
<mdb-view hover>
<a href="#!">
<mdb-card-image src="https://iasexamportal.com/sites/default/files/Government-Plan-Programme-Policies.jpeg" alt="Card image cap"></mdb-card-image>
</a>
</mdb-view>
<mdb-card-body>
<mdb-card-title>Policy 4</mdb-card-title>
<mdb-card-text>Information about the policy.</mdb-card-text>
<mdb-btn color="primary">View in detail</mdb-btn>
</mdb-card-body>
</mdb-card>
<mdb-card>
<mdb-view hover>
<a href="#!">
<mdb-card-image src="https://iasexamportal.com/sites/default/files/Government-Plan-Programme-Policies.jpeg" alt="Card image cap"></mdb-card-image>
</a>
</mdb-view>
<mdb-card-body>
<mdb-card-title>Policy 5</mdb-card-title>
<mdb-card-text>Information about the policy.</mdb-card-text>
<mdb-btn color="primary">View in detail</mdb-btn>
</mdb-card-body>
</mdb-card>
<mdb-card>
<mdb-view hover>
<a href="#!">
<mdb-card-image src="https://iasexamportal.com/sites/default/files/Government-Plan-Programme-Policies.jpeg" alt="Card image cap"></mdb-card-image>
</a>
</mdb-view>
<mdb-card-body>
<mdb-card-title>Policy 6</mdb-card-title>
<mdb-card-text>Information about the policy.</mdb-card-text>
<mdb-btn color="primary">View in detail</mdb-btn>
</mdb-card-body>
</mdb-card>
</mdb-card-group>
</mdb-row>
</mdb-container>
  </div>
  </div>
</template>

<script>
import {
  mdbNavbar, mdbNavbarBrand, mdbNavbarToggler, mdbNavbarNav, mdbNavItem,
  mdbContainer, mdbRow, mdbCard, mdbCardImage, mdbCardBody, mdbCardTitle, mdbCardText, mdbCardGroup, mdbBtn, mdbView
} from 'mdbvue'
export default {
  components: {
    mdbNavbar,
    mdbNavbarBrand,
    mdbNavbarToggler,
    mdbNavbarNav,
    mdbNavItem,
    mdbContainer,
    mdbRow,
    mdbCard,
    mdbCardImage,
    mdbCardBody,
    mdbCardTitle,
    mdbCardText,
    mdbCardGroup,
    mdbBtn,
    mdbView
  }
}
</script>
