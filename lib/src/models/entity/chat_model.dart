 class ChatModel{
   final String name;
   final String message;
   final String hour;
   final String avatarUrl;
   final int newMessage;

   ChatModel({
     this.name,
     this.message,
     this.hour,
     this.avatarUrl,
     this.newMessage
   });
 }

 List<ChatModel> temporalData= [
     ChatModel(name: 'Ever',
     message: 'Mi hermano ! ¿Un partido hoy?',
     hour: '15:30',
     avatarUrl: 'https://media.metrolatam.com/2020/01/08/images3-a6129b20f09b707923a8c52ba0165a71.jpg',
     newMessage: 1
     ),
      new ChatModel(
      name: "Codigo Fuente",
      message: "Hey! Tengo un nuevo video",
      hour: "17:30",
      avatarUrl:
      "https://cdn2.actitudfem.com/media/files/styles/gallerie_carousel/public/images/2014/12/notafamosos.jpg", newMessage: 1),
  new ChatModel(
      name: "Iron Man",
      message: "Windows 12 esta disponible!",
      hour: "5:00",
      avatarUrl:
      "https://img.europapress.es/fotoweb/fotonoticia_20200111160132_1024.jpg", newMessage: 0),
  new ChatModel(
      name: "Rachel",
      message: "Estoy bien, gracias",
      hour: "10:30",
      avatarUrl:
      "https://img.menzig.es/a/0000/55-h1.jpg", newMessage: 0),
  new ChatModel(
      name: "Barry Allen",
      message: "Soy el hombre mas rapido",
      hour: "12:30",
      avatarUrl:
      "https://e00-telva.uecdn.es/assets/multimedia/imagenes/2019/03/22/15532540629325.jpg", newMessage: 0),
  new ChatModel(
      name: "Tony Stark",
      message: "Te vi con Iris, le diré a Barry",
      hour: "18:30",
      avatarUrl:
      "https://i.pinimg.com/originals/e0/95/71/e09571555a95f25510ae3b2bb2280de2.jpg", newMessage: 1),
   ];