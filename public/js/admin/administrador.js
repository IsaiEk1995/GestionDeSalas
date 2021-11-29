var route = document.querySelector("[name=route]").value;
// var admin="http://localhost/GestionDeSalas/public/"
var urlAdmin=route + '/apiAdministrador';
new Vue({
	el:'#administrador',
	// token
	http:{
		headers:{
			'X-CSRF-TOKEN': document.querySelector('#token').getAttribute('value')
		}
	},

	data:{
		administradores:[],
		nick:'',
		password:'',
		nombre:'',
		apellidos:'',
		id_rol:1,
		buscar:'',
		active:'Administrador',
		
	},

	created:function(){
		this.getAdmin();
	},

	methods:{
		getAdmin:function(){
			this.$http.get(urlAdmin)
			.then(function(json){
				this.administradores=json.data
			});
		},

		guardarAdmin:function(id){
			this.$http.get(urlAdmin + '/' + id)
			.then(function(json){
				this.nick=json.data.nick;
				this.password=json.data.password;
				this.nombre=json.data.nombre;
				this.apellidos=json.data.apellidos;
				this.id_rol=json.data.id_rol;
				this.active=json.data.active;
			});
		},

		eliminarAdmin:function(id){
			Swal.fire({
				title: '¿Estas Seguro Que Deseas Eliminar?',
				text: "",
				icon: 'warning',
				showCancelButton: true,
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#d33',
				confirmButtonText: 'Eliminar'
			  }).then((result) => {
				if (result.isConfirmed) {
						
				this.$http.delete(urlAdmin + '/' + id)
				.then(function(json){
				this.getAdmin();
				});

				  Swal.fire(
					'¡Eliminado Exitosamente!',
					'',
					'success'
				  )
				}
			  });
		},

		agregarAdmin:function(){
			var admin={
				nick:this.nick,
				password:this.password,
				nombre:this.nombre,
				apellidos:this.apellidos,
				id_rol:this.id_rol,
				active:this.active,
			};

				this.nick='';
				this.password='';
				this.nombre='';
				this.apellidos='';
				this.id_rol=1;
				this.active='Administrador';
	
				this.$http.post(urlAdmin,admin)
				.then(function(response){
					Swal.fire({
						position:"center",
						icon:"success",
						title:"¡Agregado Exitosamente!",
						showConfirButton: false,
						timer: 2000,
					});
					this.getAdmin();
					
				});
	
			},
		actualizarAdmin:function(id){
			// crear un json 
			var admin={
				nick:this.nick,
				password:this.password,
				nombre:this.nombre,
				apellidos:this.apellidos,
				id_rol:this.id_rol,
				active:this.active,
				
					  }
		    console.log();

			this.$http.patch(urlAdmin + '/' + id,admin)
			.then(function(json){
				Swal.fire({
					position:"center",
					icon:"success",
					title:"¡Actualizado Exitosamente!",
					showConfirButton: false,
					timer: 2000,
				});
				this.getAdmin();
				this.limpiar();

			})
		},

		limpiar:function(){
				this.nick='';
				this.password='';
				this.nombre='';
				this.apellidos='';
				this.id_rol='';
				this.active='';
				
			
		}

	},
	computed:{
		filtroAdmin:function(){
			return this.administradores.filter((x)=>{
				return x.nombre.match(this.buscar.trim()) ||
					x.nombre.toLowerCase()
					 .match(this.buscar.trim().toLowerCase());
					});
				},
		},

});

