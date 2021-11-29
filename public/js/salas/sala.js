var route= document.querySelector("[name=route]").value;
// var Sal="http://localhost/GestionDeSalas/public/"
var urlSal=route + '/apiSalas';
new Vue({
	
	// token
	http:{
		headers:{
			'X-CSRF-TOKEN': document.querySelector('#token').getAttribute('value')
		}
	},

	el:'#sala',
	data:{
		salas:[],
		id_espacio:'',
		nombre:'',
		cupo:'',
		buscar:'',
		
	},

	created:function(){
		this.getSal();
	},

	methods:{
		getSal:function(){
			this.$http.get(urlSal)
			.then(function(json){
				this.salas=json.data
			});
		},

		guardarSal:function(id){
			this.$http.get(urlSal + '/' + id)
			.then(function(json){
				this.id_espacio=json.data.id_espacio;
				this.nombre=json.data.nombre;
				this.cupo=json.data.cupo;
			});
		},

		eliminarSal:function(id){			
			Swal.fire({
				title: 'Estas Seguro Que Deseas Eliminar?',
				text: "",
				icon: 'warning',
				showCancelButton: true,
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#d33',
				confirmButtonText: 'Eliminar!'
			  }).then((result) => {
				if (result.isConfirmed) {
						
				this.$http.delete(urlSal + '/' + id)
				.then(function(json){
				this.getSal();
				});

				  Swal.fire(
					'Eliminado Exitosamente!',
					'',
					'success'
				  )
				}
			  });
		},

		agregarSal:function(){
			var Sal={
				id_espacio:this.id_espacio,
				nombre:this.nombre,
				cupo:this.cupo
			};

				this.id_espacio='';
				this.nombre='';
				this.cupo='';

			this.$http.post(urlSal,Sal)
			.then(function(response){
				Swal.fire({
					position:"center",
					icon:"success",
					title:"¡Agregado Exitosamente!",
					showConfirButton: false,
					timer: 2000,
				});
				this.getSal();
				
			});

		},

		actualizarSal:function(id){
			// crear un json 
			var Sal={
				id_espacio:this.id_espacio,
				nombre:this.nombre,
				cupo:this.cupo,
					  }
		    console.log();

			this.$http.patch(urlSal + '/' + id,Sal)
			.then(function(json){
				Swal.fire({
					position:"center",
					icon:"success",
					title:"¡Actualizado Exitosamente!",
					showConfirButton: false,
					timer: 2000,
				});
				this.getSal();
				this.limpiar();

			})
		},

		limpiar:function(){
				
				this.id_espacio='';
				this.nombre='';
				this.cupo='';
		}

	},

	computed:{
		filtroSal:function(){
			return this.salas.filter((x)=>{
				return x.nombre.match(this.buscar.trim()) ||
					x.nombre.toLowerCase()
					 .match(this.buscar.trim().toLowerCase());
				});
			},
		},
});
