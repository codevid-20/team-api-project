<template>
  <div class="home">
    <h1>{{ message }}</h1>
  
    <button v-on:click="createPDF()"> CLICK HERE TO SAVE </button>
  </div>
</template>

<style>
</style>

<script>
import jsPDF from "jspdf";

export default {
  data: function () {
    return {
      message: "Welcome to Vue.js!",
    };
  },
  created: function () {
  },
  methods: {
    createPDF: function () {
      console.log("Thanks Obama");
      let pdfName = "test";
      var doc = new jsPDF();
      console.log("Thanks Romney");
      doc.text(10, 10, "Dolphin Pod 4Ever n' Ever");
      doc.save(pdfName + ".pdf");
    },
  },
};
// @ is an alias to /src
</script>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'Home',
  components: {
    HelloWorld
  }
}
</script>
