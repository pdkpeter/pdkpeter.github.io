
# How to host and format a resume using Markdown, GitHub Pages and Jekyll (On Windows)

## Purpose 

- Host and format a professional resume using Markdown, GitHub Pages and Jekyll
- Comprehend and integrate the general principles of current Technical Writing, as explained in Andrew Etter's book Modern Technical Writing

## Prerequisites

- [A GitHub Account.](https://docs.github.com/en/get-started/signing-up-for-github/signing-up-for-a-new-github-account)
- [A Resume formatted in Markdown.](#MoreResources)
- [Git installed](https://git-scm.com/downloads)

## Instructions

>Before we get started on the instructions, I'd like to sum up the key principles of creating documentation, explained by Andrew Etter in his book "Modern Technical Writing".
>These are beneficial to know as you will be following these steps when hosting/formatting your resume.

>  **Use lightweight markup**
	Plenty of lightweight markup languages exist, however we will only be discussing one in particular, Markdown.
	In order to build websites, writing needs to be in XML and the whole point of lightweight markup is to make it easier to produce well-formed XML. For example, lightweight markup can be used to easily include links to other sites and headers in your documentation whereas in XML, it is a long mess.
	Lightweight markup is very readable, fast and easy to implement.
	Additionally, there are many "flavours" of Markdown which all have different features that can benefit any writer wanting to create documentation

>**Use Distributed Version Control**
>One of the biggest pros to using distributed version control such as Git, is so multiple developers or writers can work on the same thing at once. Furthermore, writers can update a file, and you can see which writer updated what. By doing so, a version is created and you can always go back to the previous versions. For example, one person made a change to a document that they thought was correct but after changing it, another person realized it was wrong. By using version control the team can go back to the previous version without the faulty updates easily.

>**Make Static Websites**
>Making static websites are an incredible technique. They are fast, simple, widely accesible, and very reliable. The reason why they are reliable is because there are no server-side application dependencies, no databases, and nothing to install.
>There are never any crashes and no worry for someone to hack the website.
>The static website generator we will use to host our resume is Jekyll. Jekyll is highly customizable and you can play around with the theme, colors, font sizes, page width and more.

>Now, we can get started and use these principles as a guideline.
	
### Install Ruby and Jekyll

**1.** Install Ruby
- Open [RubyInstaller](https://rubyinstaller.org/downloads/) and download the newest version of Ruby WITH DEVKIT.
- Select all default options for installation.
- Run the `ridk install` at the end of the installation wizard
- Select the option `MSYS2 and MINGW development tool chain` 

**2.** Install Jekyl
- Open a new command prompt by typing in `cmd` on the search bar of your computer.
- Type `gem install jekyll bundler`
- Type `jekyll -v` to assure it was downloaded correctly

### Download and edit a resume theme

**1.** Find a theme and edit it
- Go to [RubyGems.](https://rubygems.org/)
	>There are many different websites to find themes on Jekyll, however I reccomend RubyGems as it is easily accesible.
- Search "Jekyll resume theme".
- Click on any resume theme that might interest you.
- Click "Homepage" under links to view and download the theme
- Scroll down until you reach README for further instruction on the given theme.
>	Note: Some themes require you to have already created a static site, so I will quickly show you how to set that up.
- Open a new command prompt by typing `cmd` on the search bar of your computer.
- Enter the folder on which you'd like to host the website by typing `cd "foldername"`.
- Type `jekyl new resume`.
	>Note: "resume" can be any name you'd like.
- Follow the instructions of the README of the theme you chose to go with. This will include editing the theme as well.

**2.** Run the static website theme locally
- Open a new command prompt by typing in `cmd` on the search bar of your computer.
- Enter the folder where you  saved the static website to by typing `cd "foldername"`.
- Type `bundle install`.
- Type `bundle exec jekyll serve`.
- Copy the link of the website and post it into a web browser.
> There you have it! You should see your new and amazing looking resume!

### Host your resume on GitHub Pages

**1.** GitHub
- Go to [GitHub homepage.](https://github.com/)
- Log in and locate the main page.
- Click Create a new repository.
- Choose a name for the repository.
	>Note: It may be easier to name the repository the same as your website. (In this case, resume).
- Keep all default settings and create the repository.

**2.** Edit YAML file
- Open your documents and locate the folder of the resume that will be hosted.
- Open the _config.yml_ file.
- Locate the line that says `baseurl:` and type in the name of the repository you just created.

**3.** Git commands
- Open a new command prompt.
- Use `cd` to enter the folder you will be hosting on GitHub Pages.
- Type in `git init'
- Type `git checkout -b gh-pages`
- Type `git add .`
- Type `git commit -m "anyMessageYouWant"`.
- Go back to GitHub and copy the link on the right of "git remote add origin".
- Go back to the command prompt and type in `git remote add origin link` where link is the link you just coppied off GitHub.
- Type `git push origin gh-pages`.


## MoreResources

- [MarkDown tutorial](https://www.markdowntutorial.com/)
- [Modern Technical Writing: An Introduction to Software Documentation - Andrew Etter](https://www.amazon.ca/Modern-Technical-Writing-Introduction-Documentation-ebook/dp/B01A2QL9SS)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

## Authors and Acknowledgments

- [RyanxLoi](https://github.com/RyanxLoi)
- Elieser Capillar
- Jeonghwan Choi
- Devam Patel

## FAQs

- Why is Markdown better than a word processor?
	- One of the main reasons Markdown is superior to a word processor is it eliminates the need to use your mouse to select formatting. For example, in Markdown you can easily make hyperlinks, change font and make headers all with quick and basic keyboard commands.
	
- What should I do if my Ruby version is too high/low for a Jekyll theme to work?
	- If this problem occurs try to update gem with the given command that will be printed out when you get the error. If this does not solve the problem you must downgrade your Ruby version to the version needed to run the theme.
 
