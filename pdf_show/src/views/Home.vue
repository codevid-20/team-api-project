<template>
  <div class="home">
    <button v-on:click="createPDF()"> Save Your PDF </button>
    <br>
    <br>
    <button v-on:click="kreatePDF()"> Save A Bigger PDF </button>
    <br>
    <br>
    <button v-on:click="qreatePDF()"> Save An Even Bigger Looking PDF </button>
  </div>
</template>

<style>
</style>

<script>
import jsPDF from "jspdf";

export default {
  created: function () {},
  methods: {
    createPDF: function () {
      console.log("Thanks Obama");
      let pdfName = "test";
      var doc = new jsPDF();
      console.log("Thanks Romney");
      doc.text(10, 10, "Dolphin Pod 4Ever");
      doc.save(pdfName + ".pdf");
    },
    kreatePDF: function () {
      console.log("Thanks Obama");
      let pdfName = "test";
      var doc = new jsPDF();
      console.log("Thanks Romney");
      doc.setFontSize(20);
      doc.text(10, 10, "Dolphin Pod 4Ever");
      doc.save(pdfName + ".pdf");
    },
    qreatePDF: function () {
      console.log("Thanks Obama");
      let pdfName = "test";
      var doc = new jsPDF();
      console.log("Thanks Romney");
      doc.setFontSize(45);
      doc.text(10, 10, "Dolphin Pod 4Ever");
      doc.save(pdfName + ".pdf");
    },
  },
};
// @ is an alias to /src
</script>
