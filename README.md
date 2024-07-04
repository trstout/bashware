# bashware
A Semi-Interactive, Cryptographically Secure, Diceware-Inspired Passphrase Generator

Utilizes /dev/urandom for CSPRNG. Defaults to the Large EFF Wordlist and a passphrase length of 7.

# USAGE
<a id="readme-top"></a>

<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/trstout/bashware/">
    <img src="https://github.com/trstout/bashware/bashware_logo_dark.png" alt="BashWare ...Because passwords are for suckers." width="688" height="196">
  </a>

<h3 align="center">BashWare</h3>

  <p align="center">
    A Semi-Interactive and Cryptographically Secure Diceware-Inspired Passphrase Generator
    <br />
    <a href="https://github.com/trstout/bashware/"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/trstout/bashware/">View Demo</a>
    ·
    <a href="https://github.com/trstout/bashware/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/trstout/bashware/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About BashWare

<img src="https://github.com/trstout/bashware/bashware_screenshot.png" alt="BashWare Screenshot">

<p align="right">(<a href="#readme-top">Back to TOP</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

Just do it.

### Prerequisites

A wordlist in the following format:

11111 first word
.
.
.
66666 last word

If you don't already have such a wordlist, BashWare will prompt you to download one. 

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/trstout/bashware.git
   ```
2. Make the shell script executable
   ```sh
   chmod +x bashware/bashware.sh
   ```
3. Option 1 - No installation:
   ```sh
   bashware/bashware.sh
   ```
   And call it a day.
   
4. Option 2 - "Install" as follows:
   ```sh
   cp bashware/bashware.sh /usr/bin/bashware
   chmod +x /usr/bin/bashware
   ```
   
   
<p align="right">(<a href="#readme-top">Back to TOP</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

With Option 1:
  ```sh
  /path/to/bashware.sh
  ```
    
With Option 2:
  ```sh
  bashware
  ```
 
<p align="right">(<a href="#readme-top">Back to TOP</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [ ] Define your own wordlist. 
- [ ] Define how long you wish your passphrase to be.
- [ ] TO DO:
    - [ ] Incorporate CeWL to enable custom wordlist creation & improve randomness.
    - [ ] Fix min_length for words to increase entropy.
    - [ ] Shadow stdout and copy to passphrase to clipboard (assume compromise.)
    - [ ] Integrate with extant Password Manager (or build one).

See the [open issues](https://github.com/trstout/bashware/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">Back to TOP</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

Stars are welcome, but improvements are better! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">Back to TOP</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">Back to TOP</a>)</p>



<!-- CONTACT -->
## Contact

Project Link: [https://github.com/trstout/bashware](https://github.com/trstout/bashware)

<p align="right">(<a href="#readme-top">Back to TOP</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* []<a href="https://wwww.eff.org">Electronic Frontier Foundation</a>
* []<a href="https://theworld.com/~reinhold/diceware.html">DiceWare: In the beginning....</a>
* []<a href="https://diceware.dmuth.org">dmuth's Diceware Webapp</a>

<p align="right">(<a href="#readme-top">Back to TOP</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/trstout/bashware.svg?style=for-the-badge
[contributors-url]: https://github.com/trstout/bashware/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/trstout/bashware.svg?style=for-the-badge
[forks-url]: https://github.com/trstout/bashware/network/members
[stars-shield]: https://img.shields.io/github/stars/trstout/bashware.svg?style=for-the-badge
[stars-url]: https://github.com/trstout/bashware/stargazers
[issues-shield]: https://img.shields.io/github/issues/trstout/bashware.svg?style=for-the-badge
[issues-url]: https://github.com/trstout/bashware/issues
[license-shield]: https://img.shields.io/github/license/trstout/bashware.svg?style=for-the-badge
[license-url]: https://github.com/trstout/bashware/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/timrstout
[product-screenshot]: bashware_screenshot.png
