var route= document.querySelector("[name=route]").value;
var urlSol= route + '/apiSolicitud';

new Vue({
	http:{
		headers:{
			'X-CSRF-TOKEN': document.querySelector('#token').getAttribute('value')
		}
	},

	el:'#solicitud',
	data:{
	
		solicitudes:[],
		id_solicitud:'',
		// nick:'',
		id_espacio:'',
		fecha_solicitud:'',
		// fecha_solicitada:'',
		// fecha_autorizacion:'',
		titulo_actividad:'',
		detalle_actividad:'',
		// aprobado:'',
		// activa:'',
		// clave_grupo:'',
		ClaveAsig:'',
		participantes:'',
		// buscar:'',
		// tipo_solicitud:'',

	},
	created:function(){
		this.getSol();
	},

	methods:{
		getSol:function(){
			this.$http.get(urlSol)
			.then(function(json){
				this.solicitudes=json.data
				console.log(json.data);
			});
		},
		// computed: {
		// 	filtroDoce: function() {
		// 		return this.solicitudes.filter((x) => {
		// 			return x.id_espacio.match(this.buscar.trim()) ||
		// 				x.id_espacio.toLowerCase()
		// 				.match(this.buscar.trim().toLowerCase());
		// 		});
		// 	},
		// },
	}
});