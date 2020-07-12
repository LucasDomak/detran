<template>
  <div class="home">
    <h1>Fake Detran - Consulta de Multas</h1>
    <consulta-comp/>
  </div>
</template>

<script>
import ConsultaComp from "../components/ConsultaComp.vue"

export default {
  name: 'Home',
  components: {
    ConsultaComp
  }
}
</script>
