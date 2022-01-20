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
  Story(0, "images/image-0.jpg", "texte histoire 0", "Story 0 choix 1",2, "Story 0 choix 2",1,),
  Story(1, "images/image-1.jpg", "texte histoire 1", "Story 1 choix 1",2, "Story 1 choix 2",3,),
  Story(2, "images/image-2.jpg", "texte histoire 2", "Story 2 choix 1",5, "Story 2 choix 2",4,),
  Story(3, "images/image-3.jpg", "texte histoire 3", "Story 3 choix 1",999, "Story 3 choix 2",999,),
  Story(4, "images/image-4.jpg", "texte histoire 4", "Story 4 choix 1",999, "Story 4 choix 2",999,),
  Story(5, "images/image-5.jpg", "texte histoire 5", "Story 5 choix 1",999, "Story 5 choix 2",999,),
  Story(999, "images/image-999.jpg", "terminé", "...",999, "...",999,),
];

