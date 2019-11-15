<!-- Check In form students can use if they cannot swipe their school ID -->
<template>
  <v-app>
    <v-card width="600" class="mx-auto mt-5">
      <v-card-title> <!-- Card Title Start -->
        <h1 class="display-1">Student Check-In</h1>
      </v-card-title> <!-- Card Title End -->
      <v-card-text> <!-- Card Body Start -->
        <v-form>
          <v-text-field label="First Name" />
          <v-text-field label="Last Name" />
          <v-text-field label="L Number" />
          <v-select
                  :items="[
                            'EI Session',
                            'Learning Community',
                            'P.A.S.S.',
                            'IMPEL',
                            'COACH',
                            'English Writing Lab',
                          ]"
                  label="Service Type*"
                  required
          ></v-select>
          <v-select
                  :items="[
                            'MATH 0097',
                            'MATH 0097',
                            'MATH 0097',
                            'PHYS 21??',
                            'BIOL 1013',
                            'BIOL 1033',
                            'BIOL 1043',
                          ]"
                  label="Course Name*"
                  required
          ></v-select>
        </v-form>
      </v-card-text> <!-- Card Body End -->
      <v-divider></v-divider>
      <v-card-actions> <!-- Card Actions Start -->
        <v-btn>Go Back</v-btn>
        <v-spacer></v-spacer>
        <v-btn color="success">Next Page</v-btn>
      </v-card-actions> <!-- Card Actions End -->
    </v-card>
  </v-app>
</template>

<script>
export default {
  name: 'CheckInForm',
  data: () => ({
  }),
};
</script>
