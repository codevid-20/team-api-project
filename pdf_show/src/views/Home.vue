<template>
  <div class="home">
    <br>
    <br>
    <button v-on:click="createPDF()"> Save Your PDF </button>
    <br>
    <br>
    <img src=https://media.tenor.com/images/dd4f740963fd8734eb7bc1ad83c7d2d3/tenor.gif>
    <br>
    <br>
    <button v-on:click="kreatePDF()"> Save A Bigger PDF </button>
    <br>
    <br>
    <img src=https://media.tenor.com/images/c88212174d4dc4129f76b9a4fff8561e/tenor.gif>
    <br>
    <br>
    <br>
    <button v-on:click="qreatePDF()"> Save An Even Bigger Looking PDF </button>
    <br>
    <br>
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
