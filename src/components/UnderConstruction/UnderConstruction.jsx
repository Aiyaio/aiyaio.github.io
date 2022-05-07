import React from "react";
import "./index.css";

export default function UnderConstruction() {
  return (
    <main
      id="container"
      className="flex flex-col items-center justify-between font-mono text-center text-slate-200 min-h-full min-w-full"
    >
      <section className="h-1/2 w-5/6 xl:w-1/4 mt-48 xl:mt-72">
        <img src="/logo.svg" className="h-48 w-48 mx-auto " />
        <h1 className="font-bold text-xl xl:text-4xl">
          Our team is working on the future of threat modeling!
        </h1>
        <section className="mt-4 text-base xl:text-2xl">
          To learn more, send an email to{" "}
          <a
            className="underline underline-offset-8 decoration-4 decoration-sky-400 hover:font-extrabold "
            href="mailto:team@aiya.io"
          >
            team@aiya.io
          </a>
          .
        </section>
      </section>
      <section className="pt-32 pb-8">Made with ❤ by Aiya Corp.</section>
    </main>
  );
}
