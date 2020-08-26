<template>
  <div class="home">
    <h1>{{ message }}</h1>
    
    <button v-on:click="createPDF()"> CREATE </button>
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
    this.createPDF();
  },
  methods: {
    createPDF: function () {
      console.log("Thanks Obama");
      let pdfName = "test";
      var doc = new jsPDF();
      console.log("Thanks Romney");
      doc.text(10, 10, "Hello World");
      doc.save(pdfName + ".pdf");
    },
  },
};
// @ is an alias to /src
</script>