#import "@preview/modern-cv:0.7.0": *


#show: resume.with(
  author: (
    firstname: "Osman F.",
    lastname: "Bayram",
    email: "hello@osbm.dev",
    // phone: "(+1) 111-111-1111",
    github: "osbm",
    twitter: "the_osbm",
    website: "https://osbm.dev",
    // scholar: "",
    birth: "7 April 2001",
    linkedin: "osbm",
    address: "Turkey / Istanbul",

    positions: (
      "Deep Learning Engineer",
      "Student Researcher",
      "Open Source Contributor",
    ),
  ),
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
)

= About Me

I have always been passionate about Computers and Science Fiction. And naturally the field of AI has been the perfect intersection of these two interests. I have worked on Large Language Models, Reinforcement Learning, and Tabular Data. But most of my experience lies in Computer Vision and Medical Imaging. I also love using Linux in day-to-day life and contributing to Open Source Projects. Reading sci-fi novels and watching movies are my favorite pastime activities. Dont hesitate to reach out to me if you have any questions or just want to chat.

= Experience

#resume-entry(
  title: "Research Intern",
  location: "Istanbul, Turkey",
  date: "2023 - Present",
  description: "Tubitak 1001 Project funding program",
  // title-link: "https",
)

#resume-item[
  - *Project Name*: Assessment of Prostate Cancer with Machine Learning in Quantitative Synthetic Prostate Magnetic Resonance Imaging
  - Developed end-to-end deep learning models for prostate cancer detection and segmentation.
  - Worked on kspace data for image reconstruction.
  - Trained models that start from raw kspace data and output the lesion segmentation.
]

#resume-entry(
  title: "Summer Intern",
  location: "Istanbul, Turkey",
  date: "2024",
  description: "Hevi.AI",
)

#resume-item[
  - Helped maintain existing nnunet models and improved their performance.
  - Trained and modeled a deep learning pipeline for an Image Segmentation task on Private Hospital Data.
  // - After confirming performance had improved, deployed the model on the cloud and integrated it into the company's product.
]

= Projects, Models, and Datasets
#show link: underline

Github: #link("https://github.com/osbm")[github.com/osbm]

Kaggle: #link("https://kaggle.com/osmanf")[kaggle.com/osmanf]

Huggingface Hub: #link("https://huggingface.co/osbm")[hf.co/osbm]

Docker Hub: #link("https://hub.docker.com/u/osbm")[hub.docker.com/u/osbm]

= Skills

#resume-skill-item("Languages",(strong("C++"), strong("Python"), "CUDA", "JavaScript"))
#resume-skill-item("Libraries", (strong("Pytorch"), "Tensorflow", "Huggingface Transformers", "OpenCV"))
#resume-skill-item("Spoken Languages", (strong("English"), strong("Turkish")))
#resume-skill-item("Tools", (strong("Git"),strong("Linux"), "Docker"))

= Education

#resume-entry(
  title: "Bahçeşehir University",
  location: "Turkey / Istanbul",
  date: "August 2021 - May 2025",
  // artificial intelligence engineering
  description: "Bachelor of Engineering in Artificial Intelligence (100% Scholarship)",
)


= Research

#resume-entry(
  title: "Target Specific De Novo Design of Drug Candidate Molecules with Graph Transformer-based Generative Adversarial Networks",
  location: "https://arxiv.org/abs/2302.07868",

)
#resume-item[A new Architecture for Drug Design with Graph Transformer-based Generative Adversarial Networks. I volunteered to work on this project and contributed to the live demo implementation.]


= Certifications

#resume-item[
  - Deep Learning Specialization, DeepLearning.AI
  - Huggingface Deep Reinforcement Learning Course Certificate of Excellence
  - DevOps, DataOps, MLOps, Duke University
]

