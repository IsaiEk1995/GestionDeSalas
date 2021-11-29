var route = document.querySelector("[name=route]").value;
// var admin="http://localhost/GestionDeSalas/public/"
var urlRol=route + '/apiRol';
new Vue({
	el:'#rol',
	// token
	http:{
		headers:{
			'X-CSRF-TOKEN': document.querySelector('#token').getAttribute('value')
		}
	},

	data:{
		roles:[],
		id_rol:,
		rol:,
	},

	created:function(){
		this.getRol();
	},

	methods:{
		getRol:function(){
			this.$http.get(urlRol)
			.then(function(json){
				this.roles=json.data
			});
		},

		guardarRol:function(id){
			this.$http.get(urlRol + '/' + id)
			.then(function(json){
				this.id_rol=json.data.id_rol;
				this.rol=json.data.rol;
				
			});
		},

		eliminarRol:function(id){
			var resp=confirm("¿Estas Seguro Que Deseas Eliminar?")
			if(resp==true)
			{
				this.$http.delete(urlRol + '/' + id)
				.then(function(json){
				this.getRol();
				});
			}
			
		},

		agregarRol:function(){
			var rol={
				id_rol:this.id_rol,
				rol:this.rol,
				// active:this.active,
			};

			this.id_rol;
			this.rol;

				// this.active='Administrador';
	
			this.$http.post(urlRol,rol)
			.then(function(response){
				this.getRol();
				alert('Se Ha Agregado Con Exito');
			});

		},

		actualizarRol:function(id){
			// crear un json 
			var rol={
				id_rol:this.id_rol,
				rol:this.rol
				// active:this.active,
				
					  }
		    console.log();

			this.$http.patch(urlRol + '/' + id,rol)
			.then(function(json){
				this.getRol();
				this.limpiar();
			})
		},

		limpiar:function(){
				this.id_rol='';
				this.rol='';
				// this.active='';
				
			
		}

	},

});

