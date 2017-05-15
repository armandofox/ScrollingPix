function init()
  print "Animation starting"
  m.counter = 0
  m.json = fetch_JSON()
  m.animation = m.top.FindNode("floatUp0")
  m.animation.control = "start"
  m.animation.observeField("state", "reuseAnimationContainer")
end function

function reuseAnimationContainer() as void
  m.image = m.top.FindNode("img0")
  m.counter = (m.counter + 1) MOD (m.json.count())
  props = m.json[ m.counter]
  m.image.uri = props.url
  m.image.width = props.width
  m.image.height = props.height
  m.animation.control = "start"           
end function

function fetch_JSON() as object
    data = "[{ ""url"": ""https://lh3.googleusercontent.com/ajDtD6TZBKHn71u-q1vWEMOY9DjpNwfU41tBuuXqPveT9eQZPhQyPyvvQiZGhhKpdNVDKqhnxKaW-PGHA2BshsEMBiBvgWYYGee42brUSpPcx0EB4u0ToG640uCdX-VLPbt-evWRjL4lo92N6rmqvNmeP2mImujzFcXHddpOFryXObTeei-JURn2I9LuOIqb2cXUj5FTruJEMNCL0BJs6nlrf4zr4Hu7cbFO8C3LQNg5Dn0HZOgxUTouOmmLmI65jz0SXaQe0Z4o8tQ3ITz-7Z51wGA01xZTxIuvDDb2eTtO8WjLmvUAF4H3XZp0qbwMzkacI5SksaQt4jMQwYNoWVUfBO0EMDs0ySD7_O2OLfNZmNFii1Ae9bhK8qGffyNLlFIEXKFUtA3w77TvouECU84ZMw7hTbEZFJXzu_k_Za8Jfp3b7dnN4UM5JMKGMmCYkzKWTpvhjKA1gLQmICzVV1A2UQc7T1JSdR-s_F4kaL8X-T3Znb_QQphMDw4UhfLZaxhPtX56K3eWihO1_3eFJlyOKZNiYCiCJ61bY2Dzb-K0ldiqlPC8p_MNEyg864Go8v3ltYWMPnDaGwLz1fTsqV0b4xiW4c68hjkBF-iFxXPMfqDzSD9KO2fltTjCKNV1STRLtHrMUmJtqBWlkKTvzcf25twcMvCnPCd_vrzK_Qc=w566-h640-no"", ""title"": ""Formal"", ""width"": 566, ""height"": 640 },{ ""url"": ""https://lh3.googleusercontent.com/ysBZHUjJw4mV36VNKE2OojBPlKodhJAS0IvMxN3s9vZz4ljyRlPSQ5304QPXjJfVjDPjguiEQzR-7Pfa-t4mFjfkSQG1c7v1q6lxZ3XnFm1_HlKCWhTvzLpC11iyAvldsZMNatHR7DYTWCroKA1j92OIeKCvUYNFo_2MX7e8Fg4dS566AeD2-6-zVQHXufbkXph-aPe2tiFOX52gVTTfVjqmscbLidhIH0OtdoWkChB1OOSJjl4yM64hVufUfM7fFjaQlz8i-2AcNJZDW8ZJlDJdriijaaWt1nI7b4svKzCd1f3_kWvFKMlMeeWXGqIqqtPoHu9YGjUZ0Ugk0LD7RDagnkEMjNPBSMrCzWp2n4cSSkVrbz2CZF-FR4gD3w50Lvzn5sqXaZGyz7XaYybUaUf60SOmPR_gcm-h1JOWrbVRke_SnpeFE1tcByiacLOOCIOyTWUg8zIhCLqJ7IXxSFSlJwaVx8f6Jtfdh8a5MCBam_NdsA9zPwUE_bM8l7RYLpNvUP1KeIu1oeDXlTpAO7iLA5mB2zYjOUaxp-ImnmkIXLWscxjYRVh3rQTHYwoanmRKh4RS9GBj68sxS3wxpVoE9_F6nhvu-JMNmIM-0ZjHXOzz6xVGb8Q4wFvOJDTRfUgQhRccrZg592vQfTLd61YJWJpGqrGws_TUGg_XyAM=w640-h535-no"", ""title"": ""Lietuvas"", ""width"": 640, ""height"": 535 },{""url"": ""https://lh3.googleusercontent.com/DFIXERVa4PIoI8mKI1IWg3wTtRDDz25lHt97sKjCioNVNUP5GfhBzAPI1rdZd-H1QpKwBzTb05hmi8oXaOezIa2_Wyx5lNKnQf5Ze2PsR3MeDbw2VU9ZzPSlrS_57djTgqdlLJsH4ZkfK2zzWrD9asBjb9NaOEle4gr4-Q0AMMoSDvW8bfQk8fRuBD0axi4b8WXB-gEucyqlZS__e6Bu7r3Bwor7ZE4URjad5ycNCEWeENTWFZSWtaaQ3vIKfE5f03W3Z-mNSYUyqcwAyt_bR2pEqPG-MxO09bu0z6-IsvPjWdOGaakFA6SNXLlNqZbJs4_J1X4pz3p2m9XXbw0wiSoYhCfLEh4_4GszEIVg-xhGs46fhsVzO8xP8mE_LYmBem1z2akITzyI1YLP8xzM7kWqHPC4Nt-LVYOPxmYNwxxf0QRXY2S6A03K-9Ot0hib_IJ8_n3ToSS1juUJkUCMuDUQ-N8T65s8SaIcHcsWUNRtiP6nhPw8HOM1r6mBCrqFTLJlmRp0xhmMSnIvxzKtZoX6eEqWIV1rSVsuNTGjJi4pPlikUCFqe4uLv8iwFjh-xdCec7Dk7u7v88XLeTR63dQZ_ogSvoU-Tc62jrgwCki_kyK43EzCIp1cBnLkeJ1TQ6TzrMvhrr8uIXZtciA7RaxBAeo7tXn0b8BRW5pKJv8=w320-h240-no"", ""title"": ""Backpacking"", ""width"": 320, ""height"": 240}, {""url"": ""https://lh3.googleusercontent.com/lrdZdQoNbhC15OlCBXXduaRa1JCCGIM44Y-YmA_q6XWe9aHsSsOhPXFiyVMKoyJKFpO5BFRloa-_k9Y4gwWLPio72jwzv_nr3N-INpJw1gEBrcn90h5vYusPdgF7hwPfEa-ck4t-ZJN9iDUOu07G-FkgwjzdJpUMf06klgTdqouhuXhFRaVogRJE3NGirL0hkHzWjlSPnhTw0r3EgT8ZkrlRZsdH9WaqhDY4tWQAW9cN5nbVtXhvqTwQ149FOmXx3wMs7-krt7IcjhrfCbMHDkVZVZ6eUWdsfTlUXVQVA1EheLTd9bXqtP8S9avcBuKujDa2Y3HG__K8rlDtg2Xm9aWgOdDjs2TMIRSL8zKKnyYnILVNN8GWSt0MhTlRo9y1dppHwep3WEBm_xMKK12aaSjIUpEmu7o1nZhrts2qGJiWhAAcPpo8bnAkPktxddRhJzNyoYzx95OgNJ27bkC3ZyBynxzsx3hS8q6ehz4JOAmUaCB3bDzf65p0qBWOqZS0Kc2Hp7ZbZ7sM4dVw-3rC3QmAhN0s0oM35V1zS1YwZZQEENCZG11r6v4pemSvGIlcx02gM5MkZFYIE-8STN9IIersQrN0ozP2JQ1ROZ_0irv7H_aJfbCJQZu1OvgtMiMrRoz3bgnjXApMnzSq0Iegxd0oCF4S_6-CjPw0kwVGFUE=w320-h268-no"", ""title"": ""Jay"", ""width"": 320, ""height"": 240},{""url"":""https://lh3.googleusercontent.com/o7I5pPlvGo9Rt05RAmfIV8GoMIZoRPRfVAhdNT8h1jgL4BVQBL8R5lnGKY983R9WY_Be0o-l4-1ZVZoMwLAcKUjcazEN3dWQs6KYOglcDzJf_nzLFJoAds8crdUTYHg4bJMI7dxdHQzupJzS035Wwnx8F3Bok7gSRjxTm5kQ_MXdBy6EQqdeAAWXx99sM7c8TGRRxpFj-ZFbUOYsCTHugLeBjwxrgVzPy4FnnmbifjF10nC7ass4o3COi5oTlHCSNCfcqp5ELxcebBnQ_jp-8ftrR8EysU5q-beesD301dXs9a0grpRGP0d1s6WhmYGhetY2DF6PcGxEqOQwqKNikn5QynwpOnVJRkjd2ImN2v9OuO3YTJNutdeQiYB0KMkmAUafjZKeTq3gnaypzNW_8r0DUBqe1SUZcUhQuyq4Iy-jxMhQEiWOmggMaR9R01zAD5KqGnBy65Nu5ysgU-qVr75u0zz0n_yUDc1CmQ6sRFdAgVoyWz2VZyJCOD8dxTgTnqCU2MwKuUZiZHmvR92XJKNXZkq4EwdBxhe2GAYaQB3hwOb1tvzQLSth2GB1Ttwf3QJMvLeR2tKh5kydxm-Youzll9Y6IUvZ3IYy8c9S4MuqDjR1NJncHWJuJMIdGdEcsSRKIZf1z3Vbq1OjQ5GCsvcZoWfCog68pjwA1kAFMKI=w320-h215-no"",""title"":""Wedding"",""width"":320,""height"":215}]"
    json = ParseJSON(data)
    return json
end function

