<template>
  <v-app>
    <v-content>
      <WelcomePage/>
    </v-content>
  </v-app>
</template>

<script>
import WelcomePage from './components/WelcomePage.vue';
// import CheckInForm from './components/CheckInForm.vue';

export default {
  name: 'App',

  components: {
    WelcomePage,
    // CheckInForm,
  },

  data: () => ({
    //
  }),
};
</script>
