<template>
  <div class="home">
    <button v-on:click="createPDF()"> CREATE </button>
  </div>
</template>

<style>
</style>

<script>
import jsPDF from "jspdf";

export default {
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
