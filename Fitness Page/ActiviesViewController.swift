//
//  ActiviesViewController.swift
//  Stress Buster
//
//  Created by Maya Struzak on 7/25/18.
//  Copyright © 2018 AAAM. All rights reserved.
//

import UIKit

class ActiviesViewController: UIViewController {
    
    var activity:Int = 0
    var array: Int = 100
    let recommendList:[String] = ["go on a walk", "go for a bike ride","Play relaxing music","Make a delicious comfort food", "Write your thoughts in a journal", "Color in a coloring book", "Play a sport you enjoy", "Stretch for a few minutes", "Take a few deep breaths ", "Watch a comedy and  laugh","express your self with painting"," Dance","Enjoy the smell of lavender oil on your pillow","Go for a run","Pet a dog or cat","Read an inspiring book or fun fiction","Get a massage","Soak in a warm bath","Spend time in nature, such as a park or beach","Watch a favorite show","Plan a girls' or boys' night out with your friends","Avoid common sayings that can increase stress such as,I feel like my hands are full","Have a chiropractic treatment to put the body in balance","Give someone a hug","Try guided imagery, such as imagining you are walking through a meadow","Discover the value of working in the garden","Volunteer for a good cause","Spend some time with a baby","Create a Pinterest board of inspiring images for goals or dreams","Use a tension-relief roller","Print pictures and make a photo some album","Mindfully eat something delicious","Decrease your workload","Smile","Get polarity therapy","Do a random act of kindness","Relish a favorite memory","Step outside and savor the sunlight","Take a nap","Drink some orange juice, vitamin C reduces anxiety","Do push-ups or jumping jacks","paint, sculpt or do something creative","Sing a favorite song","Do progressive muscle relaxation, starting with the feet and moving toward the head","Cut back on caffeine and alcohol","Leave a secret note for someone you love","Make a cup of tea","Get an acupuncture treatment by a qualified professional","Think of things for which you are thankful","Lessen clutter in your home by donating items","Play a musical instrument","mell some fresh flowers","Use a stress-reduction homeopathic remedy","Make something with Play-Doh","Send a funny text to a friend","Slowly count to 10","Watch a sunset or sunrise","Bake your favorite dessert","Do reflexology","Learn a new skill","Go shopping and buy yourself a new little treat","Go to bed an hour earlier","Take a mental health vacation day","Visit a museum and see there exhibit ","Drink a detox smoothie","Pray, if you are religious","Take a tai chi class","Eat a healthier diet","Try Qigong","Get a facial","Find silly jokes on the Internet and laugh","Join a support group","Give yourself a pedicure","Have a pillow fight","List all the things you love about yourself","Forgive yourself for the things you think you've done wrong ","Put on your favorite outfit","Practice mini meditations,","Envision yourself in a relaxing location or favorite spot","Engage in the gentle, relaxing exercise of yoga","Don't neglect regular workouts","Spend time with family over a good meal","Discover the healing power of Reiki","Eat some dark chocolate","Attend a fun festival in the community","Create handmade thank you notes","Make affirmations","Listen to a tape of soothing sounds","Talk to a clergy member or counselor","Use a favorite hand lotion","Travel to a new place you've never been before","Drink a cup of herbal tea","Let your gaze linger on something beautiful","Replace a negative thought with a positive one","Get biofeedback to change behavior that causes stress","Go for an invigorating swim","Take time for your favorite hobby","Look back through pictures of happy memories","Take a yoga class."]
    
    func getRecommendation(){
        let index = Int(arc4random_uniform(101))
        let recommendation = recommendList[index]
        Label.text = recommendation
        
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBAction func button(_ sender: Any) {
        getRecommendation()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
