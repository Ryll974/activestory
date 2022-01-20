class Story {
  int storyNumber;
  String storyImage;
  String storyText;
  String choix1;
  String choix2;
  Story(this.storyNumber, this.storyImage, this.storyText, this.choix1, this.choix2);
}

final List<Story> histoire = [
  Story(0, "story-00.jpg", "texte histoire 0", "Story 0 choix 1", "Story 0 choix 2",),
  Story(1, "story-01.jpg", "texte histoire 1", "Story 1 choix 1", "Story 1 choix 2",),
  Story(2, "story-02.jpg", "texte histoire 2", "Story 2 choix 1", "Story 2 choix 2",),
  Story(3, "story-03.jpg", "texte histoire 3", "Story 3 choix 1", "Story 3 choix 2",),
  Story(4, "story-04.jpg", "texte histoire 4", "Story 4 choix 1", "Story 4 choix 2",),
  Story(5, "story-05.jpg", "texte histoire 5", "Story 5 choix 1", "Story 5 choix 2",),
];

