\c haggle_db
 -- change name of db


-- Create your seedfiles here using SQL -  INSERT INTO() VALUES()
-- Inserting user data
INSERT INTO users (name, email, is_seller)
VALUES 
('John Doe', 'john@example.com', false),
('Jane Smith', 'jane@example.com', true),
('Alice Johnson', 'alice@example.com', false),
('Michael Brown', 'michael@example.com', false),
('Emily Davis', 'emily@example.com', true),
('David Lee', 'david@example.com', false),
('Sarah Wilson', 'sarah@example.com', true),
('James Miller', 'james@example.com', false),
('Bob Smith', 'bob@example.com', true);

-- Inserting item data
INSERT INTO items (user_id, name, description, price, image_url, created_at)
VALUES 
(5, 'Antique Pocket Watch', 'An exquisite antique pocket watch, meticulously crafted with intricate detailing. This timeless timepiece evokes the elegance of a bygone era and adds a touch of sophistication to any collection.', 350.00, 'https://i.etsystatic.com/8279320/r/il/a3e39f/2411796532/il_fullxfull.2411796532_33zg.jpg', '2024-04-12 13:30:00'),
(6, 'Vintage Vinyl Records', 'A curated collection of vintage vinyl records spanning various genres. These iconic records offer a nostalgic journey through music history and are a must-have for audiophiles and collectors alike.', 50.00, 'https://i.etsystatic.com/15598267/r/il/3e4d26/3679925306/il_570xN.3679925306_189s.jpg', '2024-04-13 11:45:00'),
(7, 'Classic Leather Shoes', 'Handcrafted classic leather shoes that exude timeless elegance and unmatched comfort. These versatile shoes are perfect for both formal occasions and everyday wear, making them a staple in any wardrobe.', 180.00, 'https://i.etsystatic.com/12429814/r/il/d5888b/2850504087/il_fullxfull.2850504087_oj9q.jpg', '2024-04-14 10:15:00'),
(8, 'Vintage Typewriter', 'A vintage typewriter in excellent working condition, reminiscent of a bygone era of writing and communication. With its sturdy construction and nostalgic charm, this typewriter is a collector''s dream and a unique addition to any desk or study.', 250.00, 'https://i.etsystatic.com/10404091/r/il/f58f34/2954582768/il_570xN.2954582768_20zw.jpg', '2024-04-15 09:00:00'),
(9, 'Retro Polaroid Camera', 'A retro Polaroid camera that captures memories instantly with its vintage charm. This iconic camera combines modern convenience with nostalgic appeal, allowing users to print photos on the spot and create tangible memories.', 95.00, 'https://i.etsystatic.com/11187802/r/il/85f2ef/3460272149/il_570xN.3460272149_b0bt.jpg', '2024-04-16 08:30:00'),
(1, 'Art Deco Lamp', 'An elegant Art Deco lamp that adds a touch of glamour to any room. Featuring sleek lines and opulent materials, this lamp is a statement piece that illuminates spaces with style and sophistication.', 120.00, 'https://i.etsystatic.com/18445460/r/il/9f9348/3576670502/il_570xN.3576670502_1uvu.jpg', '2024-04-17 15:45:00'),
(2, 'Vintage Record Player', 'A vintage record player that brings the warm, nostalgic sound of vinyl to life. With its retro design and modern functionality, this record player is perfect for music lovers who appreciate both style and substance.', 280.00, 'https://i.etsystatic.com/15337720/r/il/df9a19/3631598106/il_570xN.3631598106_fjvl.jpg', '2024-04-18 16:30:00'),
(2, 'Classic Fountain Pen', 'A classic fountain pen crafted from fine materials and designed for a smooth writing experience. With its timeless design and impeccable craftsmanship, this fountain pen is a symbol of elegance and sophistication.', 75.00, 'https://i.etsystatic.com/11966391/r/il/97d395/4176300345/il_570xN.4176300345_jaut.jpg', '2024-04-19 14:00:00'),
(4, 'Vintage Suitcase', 'A vintage suitcase that blends retro style with modern functionality. This durable suitcase is perfect for travelers seeking a touch of nostalgia and timeless elegance on their journeys.', 160.00, 'https://i.etsystatic.com/6060315/r/il/d57111/4045133641/il_570xN.4045133641_ou9x.jpg', '2024-04-20 11:15:00'),
(3, 'Antique Pocket Knife', 'An antique pocket knife with a rich history and exquisite craftsmanship. This versatile tool is not only a practical accessory but also a cherished heirloom passed down through generations.', 45.00, 'https://i.etsystatic.com/44136238/r/il/fb49c2/5016600859/il_fullxfull.5016600859_n8fc.jpg', '2024-04-21 09:45:00'),
(8, 'Vintage Radio', 'A vintage radio that channels the golden age of broadcasting. With its retro design and warm, crackling sound, this radio adds a nostalgic touch to any space and evokes memories of simpler times.', 110.00, 'https://i.etsystatic.com/35416186/r/il/fc2bce/4209318283/il_570xN.4209318283_7x0g.jpg', '2024-04-22 08:00:00'),
(6, 'Classic Wristwatch', 'A classic wristwatch with timeless style and reliable functionality. This elegant timepiece is the perfect accessory for any occasion, combining sophistication with practicality in a sleek design.', 200.00, 'https://i.etsystatic.com/20589992/r/il/5c3468/3349577549/il_570xN.3349577549_1wsf.jpg', '2024-04-23 12:30:00'),
(2, 'Vintage Desk', 'A vintage desk that exudes charm and character. With its ornate details and sturdy construction, this desk is not only a functional workspace but also a statement piece that adds personality to any room.', 280.00, 'https://i.etsystatic.com/21352732/r/il/23f5a0/3542347718/il_570xN.3542347718_5odl.jpg', '2024-04-24 10:45:00'),
(9, 'Art Deco Mirror', 'An Art Deco mirror that reflects timeless elegance and sophistication. With its geometric shapes and luxurious finishes, this mirror is a striking addition to any interior decor, adding depth and style to any space.', 150.00, 'https://i.etsystatic.com/25656182/r/il/c416a6/4196982654/il_570xN.4196982654_2qm2.jpg', '2024-04-25 14:15:00'),
(2, 'Vintage Telephone', 'A vintage telephone that harks back to the days of rotary dials and corded receivers. With its retro charm and functional design, this telephone is a conversation starter and a nostalgic reminder of simpler communication times.', 80.00, 'https://i.etsystatic.com/21050584/r/il/0ca9b5/2913110753/il_570xN.2913110753_3n8w.jpg', '2024-04-26 16:00:00'),
(1, 'Classic Leather Wallet', 'A classic leather wallet crafted from premium materials and designed for durability and style. With its timeless design and practical features, this wallet is an essential accessory for the modern gentleman.', 50.00, 'https://i.etsystatic.com/5490792/r/il/f308ae/2055882612/il_570xN.2055882612_akxr.jpg', '2024-04-27 09:30:00'),
(7, 'Vintage Cufflinks', 'A pair of vintage cufflinks that add a touch of old-world charm to any formal ensemble. With their intricate detailing and timeless appeal, these cufflinks are the perfect finishing touch for any gentleman''s attire.', 35.00, 'https://i.etsystatic.com/27889165/r/il/d486c9/3509305322/il_570xN.3509305322_47u8.jpg', '2024-04-28 11:00:00'),
(7, 'Retro Soda Fountain', 'A retro soda fountain that brings back memories of old-fashioned soda parlors. With its vintage design and variety of flavors, this soda fountain is a fun and nostalgic addition to any home or establishment.', 300.00, 'https://i.etsystatic.com/10465125/r/il/465491/4438278277/il_570xN.4438278277_dbik.jpg', '2024-04-29 13:45:00'),
(8, 'Antique Bookcase', 'An antique bookcase that showcases the beauty of vintage craftsmanship. With its ornate details and sturdy construction, this bookcase is not only a functional storage solution but also a timeless piece of furniture that adds character to any room.', 380.00, 'https://i.etsystatic.com/5605789/r/il/cad315/4429076274/il_570xN.4429076274_lhun.jpg', '2024-04-30 10:30:00'),
(1, 'Vintage Globe', 'A vintage globe that invites exploration and adventure. With its antique charm and accurate cartography, this globe is not only a decorative accent but also an educational tool that sparks curiosity and imagination.', 90.00, 'https://i.etsystatic.com/9460623/r/il/2101e1/3552205871/il_570xN.3552205871_klep.jpg', '2024-05-01 12:00:00'),
(2, 'Classic Trench Coat', 'A classic trench coat that epitomizes timeless style and sophistication. With its sleek silhouette and durable construction, this coat is a wardrobe staple that transcends trends and seasons, making it a versatile choice for any occasion.', 220.00, 'https://i.etsystatic.com/20320929/r/il/0732c7/2284347138/il_570xN.2284347138_dtk8.jpg', '2024-05-02 09:15:00'),
(2, 'Vintage Chess Set', 'A vintage chess set that combines elegance with strategic gameplay. With its intricately carved pieces and luxurious board, this chess set is not only a game but also a work of art that adds sophistication to any setting.', 75.00, 'https://i.etsystatic.com/13507922/r/il/bfa838/3133347713/il_570xN.3133347713_4k1l.jpg', '2024-05-03 15:30:00'),
(7, 'Art Deco Vase', 'An Art Deco vase that showcases the geometric elegance of the era. With its sleek lines and bold colors, this vase is a stunning centerpiece that adds a touch of Art Deco glamour to any floral arrangement.', 65.00, 'https://i.etsystatic.com/9640352/r/il/a4ef49/3193981531/il_570xN.3193981531_4ro1.jpg', '2024-05-04 11:45:00'),
(4, 'Vintage Bicycle', 'A vintage bicycle that evokes memories of carefree rides through idyllic landscapes. With its retro design and timeless appeal, this bicycle is not only a mode of transportation but also a symbol of freedom and nostalgia.', 280.00, 'https://i.etsystatic.com/7814655/r/il/4a0df6/2790253381/il_570xN.2790253381_j7k1.jpg', '2024-05-05 08:00:00'),
(4, 'Classic Fedora Hat', 'A classic fedora hat that adds a touch of old-school charm to any ensemble. With its timeless design and versatile style, this hat is a wardrobe essential for those who appreciate timeless elegance and sophistication.', 40.00, 'https://i.etsystatic.com/10470410/r/il/143ebe/4705210576/il_570xN.4705210576_cz3j.jpg', '2024-05-06 10:00:00'),
(3, 'Vintage Desk Lamp', 'A vintage desk lamp that illuminates workspaces with style and elegance. With its retro design and adjustable brightness, this lamp is not only a functional lighting solution but also a decorative accent that adds character to any desk or table.', 55.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeDzmDxpQPMi3UjAOZDebyLtRkxEomFmCtS5KXU-81Vg&s', '2024-05-07 13:00:00');

-- Inserting offers data
INSERT INTO offers (user_id, item_id, amount, message, created_at)
VALUES 
(1, 2, 40.00, 'I''m interested in the vinyl records. Could you do $40 for them?', '2024-05-08 09:30:00'),
(2, 6, 90.00, 'The Art Deco lamp would look great in my living room. Can you do $90?', '2024-05-09 11:45:00'),
(3, 4, 200.00, 'I collect vintage typewriters. Would you accept $200 for this one?', '2024-05-10 10:15:00'),
(4, 8, 50.00, 'I''ve been looking for a fountain pen. Can you do $50?', '2024-05-11 09:00:00'),
(5, 13, 250.00, 'The vintage desk would be perfect for my home office. Would you consider $250?', '2024-05-12 08:30:00'),
(6, 15, 60.00, 'I love vintage telephones. How about $60 for this one?', '2024-05-13 15:45:00'),
(7, 17, 25.00, 'The cufflinks are beautiful. Could you do $25 for them?', '2024-05-14 16:30:00'),
(8, 19, 300.00, 'I need a bookcase for my study. Can you go down to $300?', '2024-05-15 14:00:00'),
(9, 22, 65.00, 'I''m interested in the chess set. Would you accept $65?', '2024-05-16 11:15:00'),
(4, 21, 180.00, 'The classic trench coat is just what I''ve been looking for. Can you do $180?', '2024-05-20 10:45:00'),
(5, 20, 70.00, 'I collect vintage globes. How about $70 for this one?', '2024-05-21 14:15:00'),
(6, 18, 280.00, 'I''m interested in the retro soda fountain. Would you consider $280?', '2024-05-22 16:00:00'),
(7, 16, 40.00, 'The leather wallet is just what I need. Can you do $40?', '2024-05-23 09:30:00'),
(8, 14, 100.00, 'I''ve been looking for an Art Deco mirror. Would you accept $100?', '2024-05-24 11:00:00'),
(9, 12, 150.00, 'The classic wristwatch is beautiful. Could you do $150?', '2024-05-25 13:45:00'),
(1, 10, 30.00, 'The antique pocket knife would be a great addition to my collection. How about $30?', '2024-05-26 10:30:00'),
(2, 9, 140.00, 'I''m interested in the vintage suitcase. Would you consider $140?', '2024-05-27 12:00:00'),
(3, 7, 200.00, 'The vintage record player is exactly what I''ve been looking for. Can you do $200?', '2024-05-28 09:15:00'),
(4, 5, 80.00, 'I love retro Polaroid cameras. How about $80 for this one?', '2024-05-29 15:30:00'),
(5, 3, 150.00, 'The classic leather shoes are just my style. Could you do $150?', '2024-05-30 11:45:00'),
(6, 1, 300.00, 'I''m interested in the antique pocket watch. Would you accept $300?', '2024-05-31 08:00:00');
