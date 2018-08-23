CREATE TABLE IF NOT EXISTS books (
  id SERIAL PRIMARY KEY,
  author VARCHAR(255),
  title VARCHAR(255),
  isbn VARCHAR(255),
  image_url VARCHAR(255),
  description TEXT
);


INSERT INTO books (author, title, isbn, image_url, description)
  VALUES('Margaret Atwood', 
  'The Blind Assassin', 
  '9781551994949',
  'http://books.google.com/books/content?id=6AXhWb6UI-8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
  '"“Ten days after the war ended, my sister Laura drove a car off a bridge.” These words are spoken by Iris Chase Griffen, married at eighteen to a wealthy industrialist but now poor and eighty-two. Iris recalls her far from exemplary life, and the events leading up to her sister''s death, gradually revealing the carefully guarded Chase family secrets. Among these is “The Blind Assassin,” a novel that earned the dead Laura Chase not only notoriety but also a devoted cult following. Sexually explicit for its time, it was a pulp fantasy improvised by two unnamed lovers who meet secretly in rented rooms and seedy cafés. As this novel-within-a-novel twists and turns through love and jealousy, self-sacrifice and betrayal, so does the real narrative, as both move closer to war and catastrophe. Margaret Atwood’s Booker Prize-winning sensation combines elements of gothic drama, romantic suspense, and science fiction fantasy in a spellbinding tale. From the Hardcover edition."');

