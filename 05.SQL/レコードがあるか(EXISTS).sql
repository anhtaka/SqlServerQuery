WHERE EXISTS
   (SELECT *
   FROM titles
   WHERE pub_id = publishers.pub_id
      AND type = 'business')
