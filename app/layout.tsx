import type { Metadata } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import "./globals.css";
import { ThemeProvider as AppThemeProvider } from "@/src/shared/theme";
import { Providers } from "@/src/app/providers";
import { ThemeToggle } from "@/src/features/themeSwitcher";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: "Test Task"
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {

  return (
    <html lang="en">
      <body className={`${geistSans.variable} ${geistMono.variable}`}>
        <AppThemeProvider>
          <Providers>
            {children}
            <ThemeToggle />
          </Providers>
        </AppThemeProvider>
      </body>
    </html>
  );
}
