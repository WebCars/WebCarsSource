create table Administrador
(
	 [cod-usuario] integer primary key,
	 [nivel-acesso] integer not null,
	 constraint administrador_usuario_fk foreign key ([cod-usuario])
	 references Usuario([cod-usuario])

);

create table Anunciante
(
	[cod-usuario] integer primary key,
	[nivel-acesso] integer not null,
	cidade varchar(255) ,
	estado varchar(255) ,
	cpf varchar(255) not null,
	constraint anunciante_usuario_fk foreign key ([cod-usuario])
	references Usuario([cod-usuario])
);

create table Contato 
(
	[cod-contato] integer primary key,
	email varchar(255) not null,
	fone varchar(255) not null,
	[cod-usuario] integer,
	constraint contato_usuario_fk foreign key ([cod-usuario])
	references Usuario([cod-usuario])

);

create table Localidade
(
	[cod-local] integer primary key,
	cidade varchar(255) not null,
	latlong varchar(255) not null,
	bairro varchar(255) not null,
	endereco varchar(255) not null
);

create table AnuncioLocalidade
(
	[cod-anuncio] integer primary key,
	[cod-local] integer primary key,
	constraint AnuncioLocalidade_fk foreign key ([cod-anuncio])
	references Anuncio([cod-anuncio]),
	constraint LocalidadeAnuncio_fk foreign key ([cod-local])
	references Localidade([cod-local])

)

create table Marca
(
	[cod-marca] integer primary key,
	[des-marca] varchar(255) not null

);

create table Categoria
(
	[cod-categoria] integer primary key,
	[des-categoria] varchar(255) not null
);

create table Opcionais
(
	[cod-opcional] integer primary key,
	[des-opcional] varchar(255) not null
);

create table Cambio
(
	[cod-cambio] integer primary key,
	[des-cambio] varchar(255) not null
);

create table Combustivel
(
	[cod-combustivel] integer primary key,
	[des-combustivel] varchar(255) not null
);

create table Anuncio
(
	[nr-anuncio] integer primary key,
	[nm-anuncio] varchar(255) not null,
	[data-inicial] date not null,
	[cod-usuario] integer,
	[ano-fab] varchar(4) not null,
	[ano-modelo] varchar(4) not null,
	cor varchar(255) not null,
	[cod-marca] integer,
	[cod-categoria] integer,
	[cod-cambio] integer,
	constraint anuncio_usuario_fk foreign key ([cod-usuario])
	references Usuario([cod-usuario]),
	constraint anuncio_marca_fk foreign key ([cod-marca])
	references Marca([cod-marca]),
	constraint anuncio_categoria_fk foreign key ([cod-categoria])
	references Categoria([cod-categoria]),
	constraint anuncio_cambio_fk foreign key ([cod-cambio])
	references Cambio([cod-cambio])
);


