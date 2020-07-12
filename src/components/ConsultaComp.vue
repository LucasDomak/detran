<template>
  <div class="consulta">
      <input type="text" placeholder="Informe a Placa do Veiculo" v-model="placa">
      <button @click="ConsultarPlaca">Consultar</button>
  </div>
</template>

<script>
const axios = require('axios')
export default {
    data: function(){
        return{
            placa:''
        }
    },

    mounted(){
        axios.get("placas.json").then(multas => {this.$store.state.multas = multas.data})

    }, methods: {
        ConsultarPlaca: function(){
            this.$store.state.dadosVeiculo=this.$store.state.multas.filter(multa => multa.PLACA==this.placa)
            this.$router.push("/Resultado")
        }
    }

}
</script>

<style>

</style>