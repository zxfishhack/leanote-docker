db = db.getSiblingDB("leanote");
db.createUser({user:"leanote",pwd:"leanote",roles:[{role:"readWrite",db:"leanote"}]});
