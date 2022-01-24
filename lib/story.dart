class Story {
  int storyNumber;
  String storyImage;
  String storyText;
  String choix1;
  int choix1pointer;
  String choix2;
  int choix2pointer;
  Story(this.storyNumber, this.storyImage, this.storyText, this.choix1, this.choix1pointer, this.choix2, this.choix2pointer);
}

final List<Story> histoire = [
  Story(0, "images/image-0.jpg", "Vous venez de crever un pneu à St André. Vous n'avez pas de téléphone vous décidez de faire du stop. Une ford fiesta rouge s'arrête et le conducteur vous demande si vous voulez qu'il vous dépanne.", "Vous le remerciez et vous montez dans sa voiture",2, "Vous lui demandez s'il n'est pas un meurtrier avant !",1,),
  Story(1, "images/image-1.jpg", "Il acquiesce de la tête, sans faire attention à la question.", "Au moins il est honnête. Vous montez ! ",2, "Attends, mais je sais comment changer un pneu voyons !",3,),
  Story(2, "images/image-2.jpg", "Lorsqu'il commence à conduire, il vous demande d'ouvrir la boite à gants. À l’intérieur, vous trouvez un couteau ensanglanté, deux doigts coupés et un CD de T-Matt.", "J'adore T-Matt, je lui donne le CD.",5, "C'est lui ou moi, je prends le couteau et je le poignarde.",4,),
  Story(3, "images/image-3.jpg", "Woaw ! Quelle évasion ! ", "Recommencer !",0, "...",6,),
  Story(4, "images/image-4.jpg", "En traversant la route du littoral, vous réfléchissez à la sagesse douteuse de poignarder quelqu’un pendant qu’il conduit une voiture dans laquelle vous êtes.", "Recommencer !",0, "...",6,),
  Story(5, "images/image-5.jpg", "Vous vous faites un bon dalon et vous chantez le dernier son de T-matt ensemble. Il vous dépose à Cambaie et il vous demande si vous connaissez un bon endroit pour jeter un corps.", "Recommencer !",0, "...",6,),
  Story(6, "images/image-999.jpg", "terminé", "Recommencer",0, "...",6,),
];

