import { Kata } from './disemvowelTrolls.ts'
import { assertEquals } from "https://deno.land/std@0.178.0/testing/asserts.ts"

Deno.test("disemvowel should pass a sample test", () => {
  assertEquals(Kata.disemvowel("This website is for losers LOL!"), "Ths wbst s fr lsrs LL!")
})